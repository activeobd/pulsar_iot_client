part of pulsar_iot_client.client;

abstract class _IBrokerConnection {
  factory _IBrokerConnection({
    required brokerUri,
    required settings,
    required connectionId,
  }) =>
    _BrokerConnection(
        brokerUri: brokerUri,
        settings: settings,
        connectionId: connectionId,
    );

  Uri get brokerUri;
  int get connectionId;

  _BrokerConnectionState get connectionState;
  Stream<Object> get connectionErrorStream;

  Future connect();
  Future close();

  Future<_TopicLookupResult> lookupTopic(String topic, bool authoritative);
  Future<_ProducerCreateResult> createProducer(Int64 producerId, ProducerCreateParams params);
  Future<ProducerSendResult> sendFrame(Int64 producerId, String producerName, Int64 sequenceId, MessageMetadata messageMetadata, FramePayload payload, int numMessages);
  Future closeProducer(Int64 producerId);

  Future<_ConsumerCreateResult> createConsumer(Int64 consumerId, ConsumerCreateParams params);
  void assignConsumerSink(Int64 consumerId, Sink<ProtocolCommand>? sink);
  Future setConsumerFlow(Int64 consumerId, int messagePermits);
  Future ackMessage(Int64 consumerId, MessageId messageId, bool cumulative);
  Future closeConsumer(Int64 consumerId);
}

enum _BrokerConnectionState {
  initial,
  brokerConnect,
  brokerReady,
  brokerClosing,
  brokerClosed,
}

class _BrokerConnection implements _IBrokerConnection {
  @override
  final Uri brokerUri;
  final PulsarClientSettings settings;
  @override
  final int connectionId;

  _BrokerConnectionState _state = _BrokerConnectionState.initial;
  int _connectAttempt = 0;
  Completer? _connectCompleter;
  Completer? _closeCompleter;
  Socket? _socket;
  FrameWriter? _frameWriter;
  ServerError? _lastServerError;
  String? _lastServerErrorMessage;
  Timer? _reconnectTimer;

  Int64 _requestId = Int64.ZERO;
  final Map<Int64, Completer<_TopicLookupResult>> _lookupCompleterMap = {};                        // entries are likely to complete in order of map insertion
  final Map<Int64, Completer<_ProducerCreateResult>> _producerCreateCompleterMap = {};             // entries are likely to complete in order of map insertion
  final Map<Tuple2<Int64, Int64>, Completer<ProducerSendResult>> _producerSendCompleterMap = {};  // random access expected
  final Map<Int64, Completer> _genericCompleterMap = {};                                          // entries are likely to complete in order of map insertion
  final Map<Int64, Completer<_ConsumerCreateResult>> _consumerCreateCompleterMap = {};             // entries are likely to complete in order of map insertion
  final Map<Int64, Sink<ProtocolCommand>> _consumerSinkMap = {};                                   // random access expected

  // (main) connection error stream controller
  final _connectionErrorStreamController = StreamController<Object>();
  late Stream<Object> _connectionErrorStream;

  _BrokerConnection({
    required this.brokerUri,
    required this.settings,
    required this.connectionId,
  }) {
    _connectionErrorStream = _connectionErrorStreamController.stream.asBroadcastStream();
  }

  @override
  _BrokerConnectionState get connectionState => _state;

  @override
  Stream<Object> get connectionErrorStream => _connectionErrorStream;

  @override
  Future<_TopicLookupResult> lookupTopic(String topic, bool authoritative) {
    _readyStateCheck();

    // the completer will be completed by _handleProtocolCommand (according to request_id field)
    var lookupCompleter = Completer<_TopicLookupResult>();
    _requestId += Int64.ONE;    // increment request id
    _lookupCompleterMap[_requestId] = lookupCompleter;

    // lookup command
    var commandLookupTopic = BaseCommand(
      type: BaseCommand_Type.LOOKUP,
      lookupTopic: CommandLookupTopic(
        topic: topic,
        requestId: _requestId,
        authoritative: authoritative,         // initial lookup request should use false
      ),
    );

    // send CommandConnect
    _frameWriter!.sendSimpleCommand(commandLookupTopic);

    return lookupCompleter.future;
  }

  @override
  Future<_ProducerCreateResult> createProducer(Int64 producerId, ProducerCreateParams params) {
    _readyStateCheck();

    // the completer will be completed by _handleProtocolCommand (according to request_id field)
    var producerCreateCompleter = Completer<_ProducerCreateResult>();
    _requestId += Int64.ONE;    // increment request id
    _producerCreateCompleterMap[_requestId] = producerCreateCompleter;

    // producer creation command
    var commandProducer = BaseCommand(
      type: BaseCommand_Type.PRODUCER,
      producer: CommandProducer(
        requestId: _requestId,
        producerId: producerId,
        topic: params.topic,
        producerName: params.producerName,
      ),
    );

    // send CommandConnect
    _frameWriter!.sendSimpleCommand(commandProducer);

    return producerCreateCompleter.future;
  }

  @override
  Future<_ConsumerCreateResult> createConsumer(Int64 consumerId, ConsumerCreateParams params) {
    _readyStateCheck();

    // the completer will be completed by _handleProtocolCommand (according to request_id field)
    var consumerCreateCompleter = Completer<_ConsumerCreateResult>();
    _requestId += Int64.ONE;    // increment request id
    _consumerCreateCompleterMap[_requestId] = consumerCreateCompleter;

    // producer creation command
    var commandSubscribe = BaseCommand(
      type: BaseCommand_Type.SUBSCRIBE,
      subscribe: CommandSubscribe(
        requestId: _requestId,
        consumerId: consumerId,
        topic: params.topic,
        subscription: params.subscription,
        subType: _ModelConverter.fromSubscriptionType(params.subType),
        consumerName: params.consumerName,
      ),
    );

    // send CommandConnect
    _frameWriter!.sendSimpleCommand(commandSubscribe);

    return consumerCreateCompleter.future;
  }

  @override
  Future<ProducerSendResult> sendFrame(Int64 producerId, String producerName, Int64 sequenceId, MessageMetadata messageMetadata, FramePayload payload, int numMessages) {
    _readyStateCheck();

    // the completer will be completed by _handleProtocolCommand (according to producer_id-sequenceId pair)
    var sendCompleter = Completer<ProducerSendResult>();
    var keyTuple = Tuple2<Int64, Int64> (producerId, sequenceId);
    _producerSendCompleterMap[keyTuple] = sendCompleter;

    // producer send command
    var commandSend = BaseCommand(
      type: BaseCommand_Type.SEND,
      send: CommandSend(
        producerId: producerId,
        sequenceId: sequenceId,
        numMessages: numMessages,                   // number of messages
      ),
    );

    // send command, metadata and payload
    _frameWriter!.sendPayloadCommand(commandSend, messageMetadata, payload);

    return sendCompleter.future;
  }

  @override
  void assignConsumerSink(Int64 consumerId, Sink<ProtocolCommand>? sink) {
    if (sink != null) {
      _consumerSinkMap[consumerId] = sink;
    } else {
      _consumerSinkMap.remove(consumerId);
    }
  }

  @override
  Future setConsumerFlow(Int64 consumerId, int messagePermits) {
    _readyStateCheck();

    // flow command
    var commandFlow = BaseCommand(
      type: BaseCommand_Type.FLOW,
      flow: CommandFlow(
        consumerId: consumerId,
        messagePermits: messagePermits,
      ),
    );

    // send CommandConnect
    _frameWriter!.sendSimpleCommand(commandFlow);

    // [PULSAR] The Flow command doesn't have the request id to complete with a result
    return Future.value();
  }

  @override
  Future ackMessage(Int64 consumerId, MessageId messageId, bool cumulative) {
    _readyStateCheck();

    // ack command
    var commandAck = BaseCommand(
      type: BaseCommand_Type.ACK,
      ack: CommandAck(
        consumerId: consumerId,
        ackType: cumulative ? CommandAck_AckType.Cumulative : CommandAck_AckType.Individual,
        messageId: [ _ModelConverter.fromMessageId(messageId) ],
      ),
    );

    // send CommandConnect
    _frameWriter!.sendSimpleCommand(commandAck);

    // [PULSAR] The Ack command doesn't have the request id to complete with a result
    return Future.value();
  }

  @override
  Future closeProducer(Int64 producerId) {
    _readyStateCheck();

    // the completer will be completed by _handleProtocolCommand (according to request_id field)
    var producerCloseCompleter = Completer();
    _requestId += Int64.ONE;    // increment request id
    _genericCompleterMap[_requestId] = producerCloseCompleter;

    // producer closing command
    var commandCloseProducer = BaseCommand(
      type: BaseCommand_Type.CLOSE_PRODUCER,
      closeProducer: CommandCloseProducer(
        producerId: producerId,
        requestId: _requestId,
      ),
    );

    // send CommandConnect
    _frameWriter!.sendSimpleCommand(commandCloseProducer);

    return producerCloseCompleter.future;
  }

  void closeConsumerSink(Int64 consumerId) {
    var sink = _consumerSinkMap.remove(consumerId);
    sink?.close();
  }

  @override
  Future closeConsumer(Int64 consumerId) {
    _readyStateCheck();

    // close the consumer sink
    closeConsumerSink(consumerId);

    // the completer will be completed by _handleProtocolCommand (according to request_id field)
    var consumerCloseCompleter = Completer();
    _requestId += Int64.ONE;    // increment request id
    _genericCompleterMap[_requestId] = consumerCloseCompleter;

    // consumer closing command
    var commandCloseConsumer = BaseCommand(
      type: BaseCommand_Type.CLOSE_CONSUMER,
      closeConsumer: CommandCloseConsumer(
        consumerId: consumerId,
        requestId: _requestId,
      ),
    );

    // send CommandConnect
    _frameWriter!.sendSimpleCommand(commandCloseConsumer);

    return consumerCloseCompleter.future;
  }

  void _authResponseToken(String value) {
    _readyStateCheck();

    // AuthResponse command
    var commandAuthResponse = BaseCommand(
      type: BaseCommand_Type.AUTH_RESPONSE,
      authResponse: CommandAuthResponse(
        clientVersion: Constants.clientVersion,
        protocolVersion: Constants.protocolVersion,
        response: AuthData(
          authMethodName: Constants.authMethodToken,
          authData: value.codeUnits,
        ),
      ),
    );

    // send commandAuthResponse
    _frameWriter!.sendSimpleCommand(commandAuthResponse);
  }

  @override
  Future connect() {
    // connection attempt in progress
    if (_connectCompleter != null) {
      return _connectCompleter!.future;
    }

    // retry counter
    _connectAttempt = 0;

    return _connect();
  }

  Future<String?> _getAuthToken(String? authData) {
    if (settings.authTokenProvider != null) {   // authentication required
      var completer = Completer<String?>();

      settings.authTokenProvider!(authData).then((value) {
        // complete with value
        completer.complete(value);
      })
      .catchError((error, trace) {
        // complete with error
        completer.completeError(error, trace);
      });

      return completer.future;
    } else {
      return Future.value(null);              // auth-less connection
    }
  }

  Future _connect() {
    _state = _BrokerConnectionState.initial;
    _lastServerError = null;
    _lastServerErrorMessage = null;
    _reconnectTimer = null;

    _connectCompleter ??= Completer();

    // get authentication token (if required)
    _getAuthToken('Connect').then((String? authToken) {

      // broker connection socket
      Future<Socket> fSocket;
      if (brokerUri.scheme == Constants.schemeTLS) {
        log.info('Connecting to $brokerUri (TLS)');

        fSocket = SecureSocket.connect(
          brokerUri.host,
          brokerUri.port,
          context: settings.securityContext,
          onBadCertificate: settings.onBadCertificate,
        );
      } else if ((brokerUri.scheme == Constants.schemePlain) && (!settings.forceTLS)) {
        log.info('Connecting to $brokerUri (Plain)');

        fSocket = Socket.connect(
          brokerUri.host,
          brokerUri.port
        );
      } else {
        throw UnsupportedURISchemeException(brokerUri.scheme);
      }

      // connect to broker
      fSocket.then((Socket socket) {
        // assign socket/writer
        _socket = socket;
        _frameWriter = FrameWriter(_socket);

        // update internal state
        _state = _BrokerConnectionState.brokerConnect;

        // incoming data parser (async)
        FrameParser().transformer
          .bind(_socket!)
          .listen(
            _handleProtocolCommand,
            onError: _handleError,
            cancelOnError: false,
            onDone: () {
              log.info('Socket disconnect on $brokerUri');

              if (_state == _BrokerConnectionState.brokerReady) {    // connected broker disconnects, part of the normal workflow
                // throw a dedicated exception than should be handled by the client properly (as a new connection/lookup cycle) and not proxied to the lib client
                _handleError(BrokerShutdownException());
              } else if (_state == _BrokerConnectionState.brokerConnect) { // broker disconnects prior to handshake completion
                if (_lastServerError == ServerError.AuthenticationError) {
                  _handleError(BrokerAuthenticationErrorException(_lastServerErrorMessage));
                } else if (_lastServerError == ServerError.AuthorizationError) {
                  _handleError(BrokerAuthorizationErrorException(_lastServerErrorMessage));
                } else {
                  _handleError(SocketException.closed());
                }
              }
            }
          );

        // message CommandConnect
        var commandConnect = BaseCommand(
          type: BaseCommand_Type.CONNECT,
          connect: CommandConnect(
            clientVersion: Constants.clientVersion,
            protocolVersion: Constants.protocolVersion,
            authMethodName: (authToken != null) ? Constants.authMethodToken : null,
            authData: authToken?.codeUnits,
            featureFlags : FeatureFlags(
                supportsAuthRefresh : settings.authTokenRefreshSupported,   // auth refresh support
            ),
          ),
        );

        // send CommandConnect
        _frameWriter!.sendSimpleCommand(commandConnect);

        // [PULSAR]
        // If the broker doesn't validate the client authentication, it will reply with an Error command and close the TCP connection
        // (see onDone() above)

      }).catchError((error, trace) {
        // already completed
        if (_connectCompleter?.isCompleted ?? true) {
          return;
        }

        // reconnection
        if (++_connectAttempt >= settings.maxConnectionAttempts) {
          log.severe('Broker connection to $brokerUri failed (${settings.maxConnectionAttempts} attempts)');

          // complete with error
          _connectCompleter?.completeError(error, trace);
          _connectCompleter = null;
        } else {
          log.info('Broker connection to $brokerUri failed ($_connectAttempt / ${settings.maxConnectionAttempts}). Retry in ${settings.reconnectTime} ms');

          // schedule re-connect
          _reconnectTimer = Timer(settings.reconnectTime, _connect);
        }

      });
    })
    .catchError((error, trace) {
      _connectCompleter?.completeError(error, trace);
      _connectCompleter = null;
    });

    return _connectCompleter!.future;
  }

  @override
  Future close() {
    log.info('Disconnecting from $brokerUri');

    // cancel potential reconnect
    if (_reconnectTimer != null) {
      _reconnectTimer!.cancel();
    }

    if (_socket == null) {
      return Future.value();
    }

    // close in progress
    if (_closeCompleter != null) {
      return _closeCompleter!.future;
    }

    // close operation completer
    _closeCompleter = Completer();

    // update internal state
    _state = _BrokerConnectionState.brokerClosing;

    _socket!
        .flush()                        // flush socket
        .then(
            (_) => _socket!.close(),    // close socket
            onError: (e) {},            // ignore any errors on this stage
        )
        .whenComplete(() {
          _socket!.destroy();
          _socket = null;
          _frameWriter = null;
          _connectCompleter = null;
          _connectionErrorStreamController.close();

          // update internal state
          _state = _BrokerConnectionState.brokerClosed;

          // complete (success)
          _closeCompleter!.complete();
          _closeCompleter = null;

          log.info('Disconnected from $brokerUri');
      });

    return _closeCompleter!.future;
  }

  void _handleError(Object e) {
    // ignore exceptions during closing
    if (_closeCompleter != null) {
      return;
    }

    log.severe('Broker error $e');

    // incomplete connect
    if ((_connectCompleter != null) && (!_connectCompleter!.isCompleted)) {
      // complete it with error
      _connectCompleter!.completeError(e);
      _connectCompleter = null;
    } else {
      _postError(e);
    }
  }

  void _handleProtocolCommand(ProtocolCommand protocolCommand) {
    log.fine('Protocol command received $protocolCommand');
    var baseCommand = protocolCommand.baseCommand;

    switch (baseCommand.type) {
      case BaseCommand_Type.ERROR:
        _handleCommandError(baseCommand);
        break;
      case BaseCommand_Type.PING:
        _handleCommandPing();
        break;
      case BaseCommand_Type.CONNECTED:
        _handleCommandConnected(baseCommand);
        break;
      case BaseCommand_Type.AUTH_CHALLENGE:
        _handleCommandAuthChallenge(baseCommand);
        break;
      case BaseCommand_Type.LOOKUP_RESPONSE:
        _handleCommandLookupResponse(baseCommand);
        break;
      case BaseCommand_Type.PRODUCER_SUCCESS:
        _handleCommandProducerSuccess(baseCommand);
        break;
      case BaseCommand_Type.SEND_RECEIPT:
        _handleCommandSendReceipt(baseCommand);
        break;
      case BaseCommand_Type.SEND_ERROR:
        _handleCommandSendError(baseCommand);
        break;
      case BaseCommand_Type.SUCCESS:
        _handleCommandSuccess(baseCommand);
        break;
      case BaseCommand_Type.CLOSE_PRODUCER:
        _handleCommandCloseProducer(baseCommand);
        break;
      case BaseCommand_Type.CLOSE_CONSUMER:
        _handleCommandCloseConsumer(baseCommand);
        break;
      case BaseCommand_Type.MESSAGE:
        _handleCommandMessage(protocolCommand);   // pass protocol command (with payload)
        break;
      default:    // other command type - ignore
        break;
    }
  }

  void _handleCommandError(BaseCommand baseCommand) {
    // sub-message
    var commandError = baseCommand.error;
    var requestId = commandError.requestId;
    var errorType = commandError.error;
    var errorMessage = commandError.message;

    _lastServerError = errorType;
    _lastServerErrorMessage = errorMessage;

    // pending completer for the request (id)
    Completer? completer;

    // is there a pending lookup request for this id ?
    completer = _lookupCompleterMap.remove(requestId);
    // is there a pending producer create request for this id ?
    completer ??= _producerCreateCompleterMap.remove(requestId);
    // is there a pending consumer create request for this id ?
    completer ??= _consumerCreateCompleterMap.remove(requestId);
    // is there a pending producer/consumer close request for this id ?
    completer ??= _genericCompleterMap.remove(requestId);

    // completer found
    if (completer != null) {
      // complete with error
      completer.completeError(BrokerErrorException(errorType.toString(), errorMessage));
    }
  }

  void _handleCommandPing() {
    // respond with pong
    var commandPong = BaseCommand(
      type: BaseCommand_Type.PONG,
      pong: CommandPong(),
    );

    _frameWriter?.sendSimpleCommand(commandPong);
  }

  void _handleCommandConnected(BaseCommand baseCommand) {
    // sub-message
    var messageConnected = baseCommand.connected;

    // take max message (i.e. frame) size if provided
    if (messageConnected.hasMaxMessageSize()) {
      _frameWriter?.maxFrameSize = messageConnected.maxMessageSize;
    }

    // receiving a Connected response from the broker, the client can consider the connection ready to use

    if (_connectCompleter != null) {    // completer may be reset by a parallel close request or exception
      // update internal state
      _state = _BrokerConnectionState.brokerReady;

      // complete future (broker is connected and ready)
      _connectCompleter!.complete();
      _connectCompleter = null;
    }

  }

  void _handleCommandAuthChallenge(BaseCommand baseCommand) {
    // sub-message
    var messageAuthChallenge = baseCommand.authChallenge;
    var authData = String.fromCharCodes(messageAuthChallenge.challenge.authData);

    _getAuthToken(authData)
    .then((value) {
      if (value != null) {    // null not expected here (unless Pulsar sends an unexpected auth challenge that we were not planning to respond)
        _authResponseToken(value);    // send auth response (new token) to the broker
      }
    })
    .catchError((error, trace) {              // error during auth refresh
      _postError(error);
    });
  }

  void _handleCommandLookupResponse(BaseCommand baseCommand) {
     // sub-message
    var commandLookupResponse = baseCommand.lookupTopicResponse;
    var requestId = commandLookupResponse.requestId;
    var errorType = commandLookupResponse.error;
    var errorMessage = commandLookupResponse.message;

    // fetch completed from a map (by removing), if exists (null otherwise)
    var completer = _lookupCompleterMap.remove(requestId);

    if (completer != null) {
      // complete with result
      completer.complete(
          _TopicLookupResult(
            type: commandLookupResponse.response,
            authoritative: commandLookupResponse.authoritative,
            url: commandLookupResponse.brokerServiceUrl,
            urlTLS: commandLookupResponse.brokerServiceUrlTls,
            errorType: errorType.toString(),
            errorMessage: errorMessage,
          )
      );
    }

  }

  void _handleCommandProducerSuccess(BaseCommand baseCommand) {
    // sub-message
    var commandProducerSuccess = baseCommand.producerSuccess;
    var requestId = commandProducerSuccess.requestId;
    var producerName = commandProducerSuccess.producerName;

    // [PULSAR]
    // If producer is not "ready", the client will avoid to timeout the request
    // for creating the producer. Instead it will wait indefinitely until it gets
    // a subsequent  `CommandProducerSuccess` with `producer_ready==true`.
    var producerReady = commandProducerSuccess.producerReady;   // default value is true

    if (producerReady) {
      // fetch completed from a map (by removing), if exists (null otherwise)
      var completer = _producerCreateCompleterMap.remove(requestId);

      if (completer != null) {
        // complete with result
        completer.complete(
            _ProducerCreateResult(
              producerName: producerName,
            )
        );
      }
    }

  }

  void _handleCommandSendReceipt(BaseCommand baseCommand) {
    // sub-message
    var commandSendReceipt = baseCommand.sendReceipt;
    var producerId = commandSendReceipt.producerId;
    var sequenceId = commandSendReceipt.sequenceId;
    var messageIdData = commandSendReceipt.messageId;

    // fetch completed from a map (by removing), if exists (null otherwise)
    var keyTuple = Tuple2<Int64, Int64> (producerId, sequenceId);
    var completer = _producerSendCompleterMap.remove(keyTuple);

    if (completer != null) {
      // complete with result
      completer.complete(
          ProducerSendResult(
            messageId: _ModelConverter.fromMessageIdData(messageIdData),
          )
      );
    }
  }

  void _handleCommandSendError(BaseCommand baseCommand) {
    // sub-message
    var commandSendError = baseCommand.sendError;
    var producerId = commandSendError.producerId;
    var sequenceId = commandSendError.sequenceId;
    var errorType = commandSendError.error;
    var errorMessage = commandSendError.message;

    _lastServerError = errorType;
    _lastServerErrorMessage = errorMessage;

    // fetch completed from a map (by removing), if exists (null otherwise)
    var keyTuple = Tuple2<Int64, Int64> (producerId, sequenceId);
    var completer = _producerSendCompleterMap.remove(keyTuple);

    // completer found
    if (completer != null) {
      // complete with error
      completer.completeError(BrokerErrorException(errorType.toString(), errorMessage));
    }
  }

  void _handleCommandSuccess(BaseCommand baseCommand) {
    // sub-message
    var commandSuccess = baseCommand.success;
    var requestId = commandSuccess.requestId;

    // pending completer for the request (id)
    Completer? completer;

    // is there a pending producer/consumer close request for this id ?
    completer = _genericCompleterMap.remove(requestId);
    if (completer != null) {    // completer found
      // complete (success)
      completer.complete();
    } else {
      // is there a pending consumer create request for this id ?
      completer = _consumerCreateCompleterMap.remove(requestId);
      if (completer != null) { // completer found
        // complete (success)
        completer.complete(_ConsumerCreateResult());
      }
    }

  }

  void _handleCommandCloseProducer(BaseCommand baseCommand) {
    // sub-message
    var commandCloseProducer = baseCommand.closeProducer;
    var producerId = commandCloseProducer.producerId;

    // [PULSAR]
    // The broker can send a CloseProducer command to client when it's performing a graceful failover (eg: broker is being restarted, or the topic is being unloaded by load balancer to be transferred to a different broker).
    // When receiving the CloseProducer, the client is expected to go through the service discovery lookup again and recreate the producer again. The TCP connection is not affected.

    // pipe as an exception to the connection error stream (the restart is up to the upper class)
    _postError(BrokerProducerClosedException(producerId));
  }

  void _handleCommandCloseConsumer(BaseCommand baseCommand) {
    // sub-message
    var commandCloseConsumer = baseCommand.closeConsumer;
    var consumerId = commandCloseConsumer.consumerId;

    // pipe as an exception to the connection error stream (the restart is up to the upper class)
    _postError(BrokerConsumerClosedException(consumerId));
  }

  void _handleCommandMessage(ProtocolCommand protocolCommand) {
    // sub-message
    var commandMessage = protocolCommand.baseCommand.message;
    var consumerId = commandMessage.consumerId;

    // add to the consumer sink (if assigned)
    _consumerSinkMap[consumerId]?.add(protocolCommand);
  }

  void _readyStateCheck() {
    if ((_state != _BrokerConnectionState.brokerReady) || (_socket == null) || (_frameWriter == null)) {
      throw BrokerNotReadyException();
    }
  }

  void _postError(Object e) {
    if (_connectionErrorStreamController.hasListener && !_connectionErrorStreamController.isClosed) {
      _connectionErrorStreamController.add(e);
    }
  }

}