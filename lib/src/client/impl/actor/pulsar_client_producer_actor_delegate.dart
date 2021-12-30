part of pulsar_iot_client.client;

class _PulsarClientProducerActorDelegate implements _PulsarClientActorDelegate<_ProducerActor, _ProducerProperties, ProducerCreateParams, _ProducerCreateResult> {

  @override
  _ProducerActor actorFor({
    required _ProducerProperties properties,
    required _PulsarClientActorDescriptor descriptor,
    required Duration rebalanceTime,
    required _ClosableActorCallback closableActorCallback
  }) {
    return _ProducerImpl(
      descriptor: descriptor,
      properties: properties,
      rebalanceTime: rebalanceTime,
      closableActorCallback: closableActorCallback,
    );
  }

  @override
  _ProducerProperties propertiesFor({
    required _IBrokerConnection brokerConnection,
    required Int64 id,
    required ProducerCreateParams createParams,
    required _ProducerCreateResult createResult
  }) {
    return _ProducerProperties(
      brokerConnection: brokerConnection,
      topic: createParams.topic,
      producerId: id,
      producerName: createResult.producerName,
    );
  }

  @override
  Future<_ProducerCreateResult> createActorOnBroker({
    required _IBrokerConnection brokerConnection,
    required Int64 id,
    required ProducerCreateParams params
  }) {
    return brokerConnection.createProducer(id, params);
  }

}
