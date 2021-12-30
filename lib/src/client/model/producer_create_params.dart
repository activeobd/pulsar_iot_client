part of pulsar_iot_client.client;

/// Parameters for a new [Producer] instance creation.
class ProducerCreateParams implements _PulsarClientActorCreateParams {
  /// Topic name
  @override
  final String topic;
  /// Producer name (optional)
  final String? producerName;

  ProducerCreateParams({
    required this.topic,
    this.producerName,
  });
}
