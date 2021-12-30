part of pulsar_iot_client.exceptions;

class UnsupportedURISchemeException implements Exception {
  final String scheme;

  UnsupportedURISchemeException(
      this.scheme,
  );

  @override
  String toString() {
    return "Unsupported broker URI scheme: $scheme";
  }
}
