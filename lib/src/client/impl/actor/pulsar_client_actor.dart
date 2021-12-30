part of pulsar_iot_client.client;

abstract class _PulsarClientActorProperties {
  _IBrokerConnection get brokerConnection;
  String get topic;
  Int64 get actorId;

  void update(_PulsarClientActorProperties newProperties);
}

abstract class _PulsarClientActorCreateParams {
  String get topic;
}

abstract class _PulsarClientActorCreateResult {}

abstract class _PulsarClientActor<TProperties extends _PulsarClientActorProperties> extends Closable {
  TProperties get properties;
  _PulsarClientActorDescriptor get descriptor;

  void setConnected();
  void setDisconnected();
  void setDropped();
  void setClosed();

  void moveTo(TProperties properties);

  Exception droppedExceptionFactory();
  String get location;
}

abstract class _PulsarClientActorDelegate<TActor, TProperties extends _PulsarClientActorProperties, TCreateParams extends _PulsarClientActorCreateParams, TCreateResult extends _PulsarClientActorCreateResult> {
  TActor actorFor({
    required TProperties properties,
    required _PulsarClientActorDescriptor descriptor,
    required Duration rebalanceTime,
    required _ClosableActorCallback closableActorCallback
  });

  TProperties propertiesFor({
    required _IBrokerConnection brokerConnection,
    required Int64 id,
    required TCreateParams createParams,
    required TCreateResult createResult
  });

  Future<TCreateResult> createActorOnBroker({
    required _IBrokerConnection brokerConnection,
    required Int64 id,
    required TCreateParams params
  });
}

class _PulsarClientActorDescriptor {
  final _PulsarClientActorCreateParams createParams;
  final _PulsarClientActorDelegate actorDelegate;
  final String actorName;

  _PulsarClientActorDescriptor({
    required this.createParams,
    required this.actorDelegate,
    required this.actorName,
  });
}
