part of pulsar_iot_client.exceptions;

class BrokerAuthorizationErrorException implements Exception {
  final String? message;

  BrokerAuthorizationErrorException(this.message);

  @override
  String toString() {
    return "BrokerAuthorizationErrorException: $message";
  }
}
