part of pulsar_iot_client.client;

abstract class _PulsarClientActorImpl<TProperties extends _PulsarClientActorProperties> implements _PulsarClientActor<TProperties> {
  @override
  final _PulsarClientActorDescriptor descriptor;
  @override
  final TProperties properties;
  final Duration rebalanceTime;
  final _ClosableActorCallback closableActorCallback;

  Int64 _sequenceId = Int64.ZERO;

  bool connected = false;
  bool dropped = false;
  bool closed = false;
  List<Completer> rebalanceWaitCompleterList = [];

  _PulsarClientActorImpl({
    required this.descriptor,
    required this.properties,
    required this.rebalanceTime,
    required this.closableActorCallback,
  });

  @override
  void moveTo(TProperties newProperties) {
    log.info("The ${descriptor.actorName} on topic ${properties.topic} moved ${_locationProperties(properties)} -> ${_locationProperties(newProperties)}");

    if (properties.actorId != newProperties.actorId) {    // different id should arrive
      // reset sequence id for the producer
      _sequenceId = Int64.ZERO;
    }

    // update actor properties
    properties.update(newProperties);
  }

  @override
  void setConnected() {
    connected = true;

    // complete potential waiters
    for (var completer in rebalanceWaitCompleterList) {
      completer.complete();
    }
    // clear wait list
    rebalanceWaitCompleterList.clear();
  }

  @override
  void setDisconnected() {
    connected = false;
  }

  @override
  void setDropped() {
    dropped = true;
  }

  @override
  void setClosed() {
    closed = true;
  }

  Future<TResult> _commandGeneric<TResult>(Function commandFunc, [Object? arg0, Object? arg1]) {
    if (closed) {
      throw OperationOnClosedException();
    } else if (dropped) {
      throw droppedExceptionFactory();
    } else if (!connected) {
      var sendCompleter = Completer<TResult>();

      // add completed to the wait list
      var rebalanceWaitCompleter = Completer();
      rebalanceWaitCompleterList.add(rebalanceWaitCompleter);

      // wait to re-balance to complete (with timeout)
      rebalanceWaitCompleter.future
          .then((_) {
            if (connected) {    // safety check
              // call the same method (complete with a Future)
              sendCompleter.complete(_commandGeneric(commandFunc, arg0, arg1));
            } else {
              sendCompleter.completeError(RebalanceTimeoutException());
            }
          })
          .timeout(rebalanceTime, onTimeout: () {
            sendCompleter.completeError(RebalanceTimeoutException());
            throw RebalanceTimeoutException();
          });

      return sendCompleter.future;
    } else {
      // broker connection is ready, send message
      if (arg1 != null) {
        return commandFunc(arg0, arg1);
      } else {
        if (arg0 != null) {
          return commandFunc(arg0);
        } else {
          return commandFunc();
        }
      }
    }
  }

  String _locationProperties(TProperties properties);

  @override
  String get location {
    return _locationProperties(properties);
  }

  Future _close();

  @override
  Future close() {
    Completer? closeCompleter = Completer();

    _close()        // interval close routine
      .then((_) {
        closableActorCallback.closeActor(this);    // callback close (actor unregistering)

        // complete (success)
        closeCompleter?.complete();
        closeCompleter = null;
      })
      .catchError((error, trace) {
        // complete with error
        closeCompleter?.completeError(error, trace);
        closeCompleter = null;
      });

    return closeCompleter!.future;
  }
}