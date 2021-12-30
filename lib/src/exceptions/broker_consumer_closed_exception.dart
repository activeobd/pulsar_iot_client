part of pulsar_iot_client.exceptions;

class BrokerConsumerClosedException implements Exception {
  final Int64 consumerId;

  BrokerConsumerClosedException(this.consumerId);

  @override
  String toString() {
    return "Consumer $consumerId closed by the broker";
  }
}
