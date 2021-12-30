part of pulsar_iot_client.client;

/// Subscription type. See https://pulsar.apache.org/docs/en/next/concepts-messaging/#subscription-types for details.
enum SubscriptionType {
  exclusive,
  shared,
  failOver,
  keyShared,
}

/// Parameters for a new [Consumer] instance creation.
class ConsumerCreateParams implements _PulsarClientActorCreateParams {
  /// Topic name
  @override
  final String topic;
  /// Subscription name
  final String subscription;
  /// Subscription type
  final SubscriptionType subType;
  /// Consumer name (optional)
  final String? consumerName;

  ConsumerCreateParams({
    required this.topic,
    required this.subscription,
    required this.subType,
    this.consumerName,
  });
}
