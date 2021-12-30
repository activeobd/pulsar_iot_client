part of pulsar_iot_client.client;

class _ProducerCreateResult implements _PulsarClientActorCreateResult {
  final String producerName;

  _ProducerCreateResult({
    required this.producerName,
  });
}
