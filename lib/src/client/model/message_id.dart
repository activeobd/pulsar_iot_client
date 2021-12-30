part of pulsar_iot_client.client;

/// Unique id of the message, according to the BookKeeper LedgerEntry https://bookkeeper.apache.org/docs/latest/api/javadoc/org/apache/bookkeeper/client/LedgerEntry.html.
/// This id is assigned when appending (upon sending by the [Producer]) and can be used/stored as a reference in a future.
class MessageId {
  final Int64 ledgerId;
  final Int64 entryId;

  MessageId({
    required this.ledgerId,
    required this.entryId,
  });

  @override
  String toString() {
    return 'MessageId{ledgerId: $ledgerId, entryId: $entryId}';
  }
}