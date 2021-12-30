part of pulsar_iot_client.protocol;

class ProtocolCommand {
  final BaseCommand baseCommand;
  final MessageMetadata? messageMetadata;
  final Uint8List? payload;

  ProtocolCommand(this.baseCommand, [this.messageMetadata, this.payload]);

  @override
  String toString() {
    return 'ProtocolCommand{baseCommand: $baseCommand, messageMetadata: $messageMetadata, payload: $payload}';
  }
}