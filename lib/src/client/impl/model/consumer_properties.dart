part of pulsar_iot_client.client;

class _ConsumerProperties implements _PulsarClientActorProperties {
  @override
  _IBrokerConnection brokerConnection;
  @override
  final String topic;
  final String subscription;
  Int64 consumerId;
  String? consumerName;

  _ConsumerProperties({
    required this.brokerConnection,
    required this.topic,
    required this.subscription,
    required this.consumerId,
    this.consumerName,
  });

  @override
  void update(_PulsarClientActorProperties newPropertiesGen) {
    var newProperties = newPropertiesGen as _ConsumerProperties;

    brokerConnection = newProperties.brokerConnection;
    consumerId = newProperties.consumerId;
  }

  @override
  Int64 get actorId => consumerId;
}