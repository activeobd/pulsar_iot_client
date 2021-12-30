part of pulsar_iot_client.client;

/// Result of sending a message/batch by the [Producer].
class ProducerSendResult {
  /// Message id as assigned by the broker (see [MessageId])
  final MessageId messageId;

  ProducerSendResult({
    required this.messageId,
  });
}
