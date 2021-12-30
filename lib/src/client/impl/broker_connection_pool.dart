part of pulsar_iot_client.client;

class _BrokerConnectionPool {
  final PulsarClientSettings settings;
  final Map <Uri, _IBrokerConnection> _connectionMap = {};
  final Map <Uri, Future<_IBrokerConnection>> _connectionFutureMap = {};
  int _brokerConnectionId = 0;

  _BrokerConnectionPool({
    required this.settings
  });

  Future<_IBrokerConnection> connect({required Uri brokerUri}) {
    if (_connectionMap.containsKey(brokerUri)) {                  // connection open / ready, return value
      return Future.value(_connectionMap[brokerUri]);
    } else if (_connectionFutureMap.containsKey(brokerUri)) {     // connection is opening, return future
      return Future.value(_connectionFutureMap[brokerUri]);
    } else {                                                      // start new connection attempt
      // completer
      var connectCompleter = Completer<_IBrokerConnection>();
      _connectionFutureMap[brokerUri] = connectCompleter.future;

      // increment broker connection id
      _brokerConnectionId++;

      // connect
      var brokerConnection = _IBrokerConnection(brokerUri: brokerUri, settings: settings, connectionId: _brokerConnectionId);
      brokerConnection.connect()
        .then((_) {
          // add to the open connection map
          _connectionMap[brokerUri] = brokerConnection;

          // complete with result
          connectCompleter.complete(brokerConnection);
        })
        .catchError((error, trace) {
          // complete with error
          connectCompleter.completeError(error, trace);
        })
        .whenComplete(() {
          // remove from completer list
          _connectionFutureMap.remove(brokerUri);
        });

      return connectCompleter.future;
    }
  }

  Future release(_IBrokerConnection brokerConnection) {
    var brokerUri = brokerConnection.brokerUri;

    var openConnection = _connectionMap.remove(brokerUri);
    if (openConnection != null) {
      return openConnection.close();
    } else {
      return Future.value();
    }
  }

  Future close() {
    var closeFutures = <Future>[];
    for (var connection in _connectionMap.values) {
      closeFutures.add(connection.close());
    }

    // future waiting for all connection close() futures to complete
    return Future.wait(closeFutures);
  }


}