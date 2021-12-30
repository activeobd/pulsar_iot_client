part of pulsar_iot_client.exceptions;

class BrokerAuthenticationErrorException implements Exception {
  final String? message;

  BrokerAuthenticationErrorException(this.message);

  @override
  String toString() {
    return "BrokerAuthenticationErrorException: $message";
  }
}
