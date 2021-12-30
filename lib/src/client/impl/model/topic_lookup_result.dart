part of pulsar_iot_client.client;

class _TopicLookupResult {
  final CommandLookupTopicResponse_LookupType? type;
  final bool? authoritative;

  final String? url;
  final String? urlTLS;

  final String? errorType;
  final String? errorMessage;

  _TopicLookupResult({
    required this.type,
    required this.authoritative,
    this.url,
    this.urlTLS,
    this.errorType,
    this.errorMessage,
  });
}
