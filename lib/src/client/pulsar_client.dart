part of pulsar_iot_client.client;

/// The library client class.
/// Although it's possible to have multiple instances of it running independently, it's recommended to use a single [PulsarClient] instance for a particular Pulsar cluster.
abstract class PulsarClient extends Closable {
  factory PulsarClient({
    PulsarClientSettings? settings
  }) =>
    _PulsarClientImpl(
        settings: settings
    );

  /// Global error/exception (not associated with individual request completion) stream.
  Stream<Object> get clientErrorStream;

  /// Create new producer instance with specified parameters.
  ///
  /// Returns a [Future] for the new [Producer] instance within this client
  Future<Producer> newProducer(ProducerCreateParams params);

  /// Create new consumer instance with specified parameters.
  ///
  /// Returns a [Future] for the new [Consumer] instance within this client
  Future<Consumer> newConsumer(ConsumerCreateParams params);
}
