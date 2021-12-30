import 'dart:async';

import 'package:pulsar_iot_client/pulsar_iot_client.dart';
import 'package:oauth2/oauth2.dart' as oauth2;
import "package:logging/logging.dart";
import 'settings.dart';

final Logger log = Logger('example');

Future<String> _getAuthToken(String? data) {
  log.info('Auth token refresh requested ($data)');

  var completer = Completer<String>();

  // [OAuth2] Client Credentials Grant does NOT support token refreshing. Request new credentials each time
  // https://datatracker.ietf.org/doc/html/rfc6749#section-4.4.3

  oauth2.clientCredentialsGrant(
    Settings.oauth2Endpoint,
    Settings.oauth2ConsumerIdentifier,
    Settings.oauth2ConsumerSecret,
  )
  .then((oauth2client) {
    log.info("Credentials expire at ${oauth2client.credentials.expiration}");
    completer.complete(oauth2client.credentials.accessToken);
  })
  .catchError((error, trace) { completer.completeError(error, trace); });

  return completer.future;
}


Future<void> main() async {
  Logger.root.level = Level.FINE;
  Logger.root.onRecord.listen((record) {
    print('[${record.loggerName}] ${record.level.name}: ${record.time}: ${record.message}');
  });

  var client = PulsarClient(
    settings: PulsarClientSettings(
      serviceUrl: Settings.pulsarServiceUrl,
      forceTLS: Settings.pulsarForceTLS,
      authTokenProvider: _getAuthToken,
      authTokenRefreshSupported: true,
    ),
  );

  client.clientErrorStream.listen((Object error) {
    log.severe('Client error $error');
  });

  var consumer = await client.newConsumer(
      ConsumerCreateParams(
          topic: Settings.pulsarTopic,
          subscription: Settings.pulsarSubscription,
          subType: SubscriptionType.exclusive,
      )
  );
  log.info('Consumer created');

  consumer.listen((GenericInputMessage message) {
    log.info('Message received(${message.storageType}) ${message.messageId} properties:${message.propertyMap} payload:${String.fromCharCodes(message.payload)}');

      if (message.storageType != MessageStorageType.batchIntermediate) {
        // ack message
        consumer.ackMessage(message.messageId, true);
      }
    },
    onError: (error) => log.severe('Consumer error $error'),
    onDone: () => log.severe('Consumer done')
  );

  await consumer.getFlow(100);

  log.info('Sleeping');
  await Future.delayed(const Duration(seconds: 120));

  log.info('Closing');
  //await consumer.close();
  await client.close();

  log.info('Done');
}
