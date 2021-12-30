part of pulsar_iot_client.client;

/// (Optional) settings for the [PulsarClient] instance.
class PulsarClientSettings {
  /// Service (discovery) URL string of the Pulsar cluster. This is an entry point for clients
  final String serviceUrl;

  /// Authentication token provider function (optional). [Null] value disables authentication support
  final Future<String> Function(String? value)? authTokenProvider;
  /// Authentication token refresh support flag
  final bool authTokenRefreshSupported;

  /// Forced TLS-only mode enable flag
  final bool forceTLS;
  /// The context parameter for underlying [SecureSocket.connect] calls
  final SecurityContext? securityContext;
  /// The onBadCertificate handler for underlying [SecureSocket.connect]  calls
  final bool Function(X509Certificate)? onBadCertificate;

  /// Silent socket-level reconnect attempts number
  int maxConnectionAttempts;
  /// Silent socket-level reconnect time
  Duration reconnectTime;

  /// Maximum number of (nested) request redirects. Must be > number of brokers in the cluster
  int maxRedirects;
  /// Expected (topic) rebalance time
  Duration rebalanceTime;
  /// Maximum (topic) rebalance time from the producer/consumer (high-level) prospect
  Duration rebalanceTimeMax;

  PulsarClientSettings({
    this.serviceUrl = 'pulsar://localhost:6650/',
    this.authTokenProvider,
    this.authTokenRefreshSupported = true,
    this.forceTLS = false,
    this.securityContext,
    this.onBadCertificate,
    this.maxConnectionAttempts = 1,
    this.reconnectTime = const Duration(milliseconds: 2000),
    this.rebalanceTime = const Duration(milliseconds: 1000),
    this.rebalanceTimeMax = const Duration(milliseconds: 5000),
    this.maxRedirects = 4,
  });
}
