part of pulsar_iot_client.client;

/// Determines how the message was stored (i.e. delivered) on the broker side.
enum MessageStorageType {
  /// Single (independent) message
  single,
  /// Intermediate message in a batch
  batchIntermediate,
  /// Last message in a batch
  batchLast,
}

/// Input (received) message.
class GenericInputMessage extends GenericMessage {
  /// Id of the message
  final MessageId messageId;
  /// Message delivery/storage type
  final MessageStorageType storageType;

  GenericInputMessage({
    required payload,
    required this.messageId,
    required this.storageType,
    propertyMap
  }) : super(
    payload: payload,
    propertyMap: propertyMap
  );

}