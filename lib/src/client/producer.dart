part of pulsar_iot_client.client;

/// Producer instance (associated with a [PulsarClient] instance).
abstract class Producer extends Closable {
  /// Send/publish a single [message] for the producer.
  ///
  /// Returns a [Future] for the operation completion result [ProducerSendResult]
  Future<ProducerSendResult> sendMessage(GenericMessage message);

  /// Send/publish a message batch for the producer.
  ///
  /// Returns a [Future] for the operation completion result [ProducerSendResult]
  Future<ProducerSendResult> sendMessageBatch(List<GenericMessage> messageList);
}
