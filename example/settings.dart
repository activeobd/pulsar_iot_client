class Settings {
  static final oauth2Endpoint = Uri.parse('http://localhost:8080/auth/realms/pulsar/protocol/openid-connect/token');
  static final oauth2ProducerIdentifier = 'pulsar-producer-confidential';
  static final oauth2ProducerSecret = '00000000-0000-0000-0000-000000000000';
  static final oauth2ConsumerIdentifier = 'pulsar-consumer-confidential';
  static final oauth2ConsumerSecret = '00000000-0000-0000-0000-000000000000';

  static final pulsarServiceUrl = "pulsar://localhost:6650";
  static final pulsarForceTLS = false;
  static final pulsarTopic = 'persistent://test/test/test';
  static final pulsarSubscription = 'sub1';
}
