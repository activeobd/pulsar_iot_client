part of pulsar_iot_client.exceptions;

class InvalidFrameException implements Exception {

  InvalidFrameException();

  @override
  String toString() {
    return "Invalid Pulsar frame received";
  }
}
