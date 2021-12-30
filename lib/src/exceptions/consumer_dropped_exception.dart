part of pulsar_iot_client.exceptions;

class ConsumerDroppedException implements Exception {
  final String subscription;
  Int64 consumerId;
  String? consumerName;

  ConsumerDroppedException(this.consumerId, this.subscription, this.consumerName);

  @override
  String toString() {
    return "Consumer $consumerId / $subscription ${consumerName ?? ''} dropped";
  }
}
