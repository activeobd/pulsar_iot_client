part of pulsar_iot_client.exceptions;

class ConnectionException implements Exception {
  final String message;

  ConnectionException(
      this.message,
  );

  @override
  String toString() {
    return "ConnectionException: $message";
  }
}
