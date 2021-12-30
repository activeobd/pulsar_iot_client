part of pulsar_iot_client.client;

class _PulsarClientConsumerActorDelegate implements _PulsarClientActorDelegate<_ConsumerActor, _ConsumerProperties, ConsumerCreateParams, _ConsumerCreateResult> {

  @override
  _ConsumerActor actorFor({
    required _ConsumerProperties properties,
    required _PulsarClientActorDescriptor descriptor,
    required Duration rebalanceTime,
    required _ClosableActorCallback closableActorCallback
  }) {
    return _ConsumerImpl(
      descriptor: descriptor,
      properties: properties,
      rebalanceTime: rebalanceTime,
      closableActorCallback: closableActorCallback,
    );
  }

  @override
  _ConsumerProperties propertiesFor({
    required _IBrokerConnection brokerConnection,
    required Int64 id,
    required ConsumerCreateParams createParams,
    required _ConsumerCreateResult createResult
  }) {
    return _ConsumerProperties(
      brokerConnection: brokerConnection,
      topic: createParams.topic,
      subscription: createParams.subscription,
      consumerId: id,
      consumerName: createParams.consumerName,
    );
  }

  @override
  Future<_ConsumerCreateResult> createActorOnBroker({
    required _IBrokerConnection brokerConnection,
    required Int64 id,
    required ConsumerCreateParams params
  }) {
    return brokerConnection.createConsumer(id, params);
  }



}
