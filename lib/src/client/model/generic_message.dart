part of pulsar_iot_client.client;

/// Individual message sent/received.
class GenericMessage {
  /// Message (binary) payload
  final Uint8List payload;
  /// Map of application-defined properties for the message
  final Map<String, String>? propertyMap;

  GenericMessage({
    required this.payload,
    this.propertyMap
  });
}