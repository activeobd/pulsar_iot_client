part of pulsar_iot_client.exceptions;

class OversizeFrameException implements Exception {
  final int size;

  OversizeFrameException(this.size);

  @override
  String toString() {
    return "Pulsar frame size $size exceeds the limit";
  }
}
