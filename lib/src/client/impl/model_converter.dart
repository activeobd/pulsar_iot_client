part of pulsar_iot_client.client;

class _ModelConverter {

  static MessageId fromMessageIdData(MessageIdData messageIdData) {
    return MessageId(
      ledgerId: messageIdData.ledgerId,
      entryId: messageIdData.entryId,
    );
  }

  static MessageIdData fromMessageId(MessageId messageId) {
    return MessageIdData(
      ledgerId: messageId.ledgerId,
      entryId: messageId.entryId,
    );
  }

  static CommandSubscribe_SubType fromSubscriptionType(SubscriptionType subscriptionType) {
    switch (subscriptionType) {
      case SubscriptionType.exclusive:
        return CommandSubscribe_SubType.Exclusive;
      case SubscriptionType.shared:
        return CommandSubscribe_SubType.Shared;
      case SubscriptionType.failOver:
        return CommandSubscribe_SubType.Failover;
      case SubscriptionType.keyShared:
        return CommandSubscribe_SubType.Key_Shared;
    }
  }

}