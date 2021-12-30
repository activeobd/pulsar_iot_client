part of pulsar_iot_client.exceptions;

class ProducerDroppedException implements Exception {
  final Int64 producerId;
  final String producerName;

  ProducerDroppedException(this.producerId, this.producerName);

  @override
  String toString() {
    return "Producer $producerId / $producerName dropped";
  }
}