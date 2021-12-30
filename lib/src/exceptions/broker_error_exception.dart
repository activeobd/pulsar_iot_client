part of pulsar_iot_client.exceptions;

class BrokerErrorException implements Exception {
  final String errorType;
  final String message;

  BrokerErrorException(
      this.errorType,
      this.message,
      );

  @override
  String toString() {
    return "BrokerErrorException: $errorType ($message)";
  }
}
