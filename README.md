# pulsar_iot_client

A lightweight Apache Pulsar client primarily focused on the IoT telemetry domain. This project aims to improve the resulting performance of a Pulsar cluster / reduce operating costs by removing the AMQP / MQTT proxy and utilizing the message batching.

Core features:
 - fully asynchronous API (Producer, Consumer)
 - transparent topic rebalancing handling (producer/consumer recreated on a new broker)
 - supports message batching. In fact, each batch message is stored as a single ledger entry on the Pulsar side, making this a preferable way of relatively small periodic data updates handling 
 - OAuth2 / token-based authentication with access token refreshing support
 - TLS-forced mode to impose app security
 
TODO:   
 - partitioned topics support
 - payload schema support

## Quick start

Producer
```dart
// PulsarClient is an entry point
var client = PulsarClient(
  settings: PulsarClientSettings(
    serviceUrl: 'pulsar://localhost:6650',
  ),
);

// global errors (not associated with individual requests completion)
client.clientErrorStream.listen((Object error) {
});

// create Producer on the topic
var producer = await client.newProducer(
  ProducerCreateParams(topic: 'persistent://tenant/namespace/topic')
);

// send a single message. Result contains the messageId
var resultSingle = await producer.sendMessage(
  GenericMessage(
    propertyMap: {'key': 'value'},
    payload: Uint8List.fromList('Binary payload'.codeUnits),
  )
);

// close individual producer
producer.close();
// close client (with all associated producers, consumers and broker connections)
client.close();
```
Consumer
```dart
// create Consumer on the topic with defined subscription name and type
var consumer = await client.newConsumer(
  ConsumerCreateParams(
      topic: 'persistent://tenant/namespace/topic',
      subscription: 'subscription-name',
      subType: SubscriptionType.exclusive,
  )
);

// listen for incoming messages
consumer.listen((GenericInputMessage message) {
  // ack message (unless it's intermediate in a batch) 
  if (message.storageType != MessageStorageType.batchIntermediate) {
    consumer.ackMessage(message.messageId, false);
  }
});

// give permission to the broker to push next 100 messages (flow control)
await consumer.getFlow(100);
```
OAuth2 (using [oauth2](https://pub.dev/packages/oauth2) package)
```dart
Future<String> _getAuthToken(String? data) {
  var completer = Completer<String>();

  // alternatively, call refreshCredentials() on existing oauth2 client if supported by the particular grant type 
  oauth2.clientCredentialsGrant(
    oauth2Endpoint,
    oauth2Identifier,
    oauth2Secret,
  )
  .then((oauth2client) {
    completer.complete(oauth2client.credentials.accessToken);
  })
  .catchError((error, trace) { completer.completeError(error, trace); });

  return completer.future;
}

// The authTokenProvider function will be invoked to get/refresh an access token
// The periodic token refresh will be triggered by broker, there's no need to track expiration manually
var client = PulsarClient(
  settings: PulsarClientSettings(
    forceTLS: true,
    serviceUrl: 'pulsar+ssl://broker.my-domain.com:6651',
    authTokenProvider: _getAuthToken,
    authTokenRefreshSupported: true,
  ),
);
```
