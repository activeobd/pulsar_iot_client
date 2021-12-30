part of pulsar_iot_client.client;

abstract class _ConsumerActor implements Consumer, _PulsarClientActor<_ConsumerProperties> {}

class _ConsumerImpl extends _PulsarClientActorImpl<_ConsumerProperties> implements _ConsumerActor  {
  final _outputController = StreamController<GenericInputMessage>();
  final _inputController = StreamController<ProtocolCommand>();

  _ConsumerImpl({
    required descriptor,
    required properties,
    required rebalanceTime,
    required closableActorCallback,
  }) : super(
      descriptor: descriptor,
      properties: properties,
      rebalanceTime : rebalanceTime,
      closableActorCallback: closableActorCallback,
  ) {
    _main();
  }

  void _main() {
    // assign consumer sink
    properties.brokerConnection.assignConsumerSink(properties.consumerId, _inputController.sink);

    // input message processing
    _inputController.stream.listen((ProtocolCommand protocolCommand) {
        try {
          _handleInput(protocolCommand);
        } catch (error) {
          _outputController.sink.addError(error);
        }
      },
      cancelOnError: false,
      onError: (Object error) => _outputController.sink.addError(error),
      onDone: () => _outputController.sink.done,
    );
  }

  @override
  Future getFlow(int messagePermits) {
    return _commandGeneric(_startFlowCommand, messagePermits);
  }

  @override
  Future ackMessage(MessageId messageId, bool cumulative) {
    return _commandGeneric(_confirmMessageCommand, messageId, cumulative);
  }

  Future _startFlowCommand(int messagePermits) {
    return properties.brokerConnection.setConsumerFlow(properties.consumerId, messagePermits);    // set flow
  }

  Future _confirmMessageCommand(MessageId messageId, bool cumulative) {
    return properties.brokerConnection.ackMessage(properties.consumerId, messageId, cumulative);
  }

  Future _closeCommand() {
    return properties.brokerConnection.closeConsumer(properties.consumerId);
  }

  @override
  Future _close() {
    // close output stream/controller
    _outputController.close();

    // closing on broker connection
    return _commandGeneric(_closeCommand);
  }

  void _handleInput(ProtocolCommand protocolCommand) {
    // sub-message
    var commandMessage = protocolCommand.baseCommand.message;
    var metadata = protocolCommand.messageMetadata;
    var messageIdData = commandMessage.messageId;
    var payload = protocolCommand.payload;

    if (payload == null) {
      log.severe('Message batch without payload');
      throw InvalidFrameException();
    }

    var numMessagesInBatch = metadata?.numMessagesInBatch ?? 1;
    if (numMessagesInBatch > 1) {       // batch of messages
      log.fine('Received batch of $numMessagesInBatch messages');

      var payloadOffset = 0;
      var payloadLen = payload.lengthInBytes;

      while ((payloadLen - payloadOffset) >= 4) {   // batch unroll loop
        var metadataHeaderData = ByteData.sublistView(payload, payloadOffset, payloadOffset + 4);
        payloadOffset += 4;
        var metadataSize = metadataHeaderData.getUint32(0, Endian.big);

        if ((payloadLen - payloadOffset) < metadataSize) {
          log.severe('Batch SingleMessageMetadata is larger than remaining payload $metadataSize > ${payloadLen - payloadOffset}');
          throw InvalidFrameException();
        }

        // decode metadata
        var commandDecoded = SingleMessageMetadata.fromBuffer(payload.sublist(payloadOffset, payloadOffset + metadataSize));
        payloadOffset += metadataSize;
        var messageProperties = commandDecoded.properties;
        var messagePayloadSize = commandDecoded.payloadSize;

        if ((payloadLen - payloadOffset) < messagePayloadSize) {
          log.severe('Batch message payload is larger than remaining $metadataSize > ${payloadLen - payloadOffset}');
          throw InvalidFrameException();
        }

        var messagePayload = payload.sublist(payloadOffset, payloadOffset + messagePayloadSize);
        payloadOffset += messagePayloadSize;

        var hasNext = ((payloadLen - payloadOffset) >= 4);

        // add message
        if (!_outputController.isClosed) {
          _outputController.sink.add(
              GenericInputMessage(
                payload: messagePayload,
                storageType: hasNext ? MessageStorageType.batchIntermediate : MessageStorageType.batchLast,
                propertyMap: { for (KeyValue v in messageProperties) v.key : v.value },
                messageId: _ModelConverter.fromMessageIdData(messageIdData),
              )
          );
        }
      }
    } else {
      if (!_outputController.isClosed) {
        // add (single) message
        _outputController.sink.add(
            GenericInputMessage(
              payload: payload,
              storageType: MessageStorageType.single,   // a single (independent) message
              propertyMap: (metadata?.properties != null) ? { for (KeyValue v in metadata!.properties) v.key : v.value } : null,
              messageId: _ModelConverter.fromMessageIdData(messageIdData),
            )
        );
      }
    }
  }

  @override
  StreamSubscription<GenericInputMessage> listen(
      void Function(GenericInputMessage event) onData,
      {Function? onError,
        void Function()? onDone,
        bool cancelOnError = false}) => _outputController.stream.listen(onData, onError: onError, onDone: onDone, cancelOnError: cancelOnError);

  @override
  Exception droppedExceptionFactory() {
    return ConsumerDroppedException(properties.consumerId, properties.subscription, properties.consumerName);
  }

  @override
  String _locationProperties(_ConsumerProperties properties) {
    return '[${properties.consumerId} / ${properties.subscription} ${properties.consumerName ?? ''} at ${properties.brokerConnection.brokerUri}]';
  }

}
