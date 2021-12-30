part of pulsar_iot_client.client;

/// Closable interface.
abstract class Closable {
  /// Close this instance.
  ///
  /// Returns an operation completion [Future]
  Future close();
}
