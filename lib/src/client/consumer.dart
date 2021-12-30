part of pulsar_iot_client.client;

/// Consumer instance (associated with a [PulsarClient] instance).
abstract class Consumer extends Closable {
  /// Grant permission to the broker to send [messagePermits] messages to this consumer (flow control).
  /// Subsequent call to this method allows next [messagePermits] messages in addition to any number previously specified.
  ///
  /// Returns an operation completion [Future]
  Future getFlow(int messagePermits);

  /// Acknowledge to the broker that a given message with [messageId] has been successfully processed by the application and can be discarded by the broker.
  /// With [cumulative] acknowledgement, the consumer can only acknowledge the last message received. Note: cumulative acknowledgement can't be used with shared subscription type
  ///
  /// Returns an operation completion [Future]
  Future ackMessage(MessageId messageId, bool cumulative);

  /// Assign an input messages listener for the consumer.
  StreamSubscription<GenericInputMessage> listen(
    void Function(GenericInputMessage event) onData,
    {Function onError,
    void Function() onDone,
    bool cancelOnError});

}
