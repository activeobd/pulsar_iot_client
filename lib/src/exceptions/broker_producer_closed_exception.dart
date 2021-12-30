part of pulsar_iot_client.exceptions;

class BrokerProducerClosedException implements Exception {
  final Int64 producerId;

  BrokerProducerClosedException(this.producerId);

  @override
  String toString() {
    return "Producer $producerId closed by the broker";
  }
}
