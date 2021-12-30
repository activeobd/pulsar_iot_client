part of pulsar_iot_client.client;

class _ProducerProperties implements _PulsarClientActorProperties {
  @override
  _IBrokerConnection brokerConnection;
  @override
  final String topic;
  Int64 producerId;
  String producerName;

  _ProducerProperties({
    required this.brokerConnection,
    required this.topic,
    required this.producerId,
    required this.producerName,
  });

  @override
  void update(_PulsarClientActorProperties newPropertiesGen) {
    var newProperties = newPropertiesGen as _ProducerProperties;

    brokerConnection = newProperties.brokerConnection;
    producerId = newProperties.producerId;
    producerName = newProperties.producerName;
  }

  @override
  Int64 get actorId => producerId;
}
