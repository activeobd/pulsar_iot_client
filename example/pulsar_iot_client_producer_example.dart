import 'dart:async';
import 'dart:typed_data';

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
    Settings.oauth2ProducerIdentifier,
    Settings.oauth2ProducerSecret,
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

  var producer = await client.newProducer(ProducerCreateParams(topic: Settings.pulsarTopic));
  log.info('Producer created');

  var resultSingle = await producer.sendMessage(
      GenericMessage(
        propertyMap: {'single': 'yes'},
        payload: Uint8List.fromList('Message single ${DateTime.now().toIso8601String()}'.codeUnits),
      )
  );
  log.info('Sent, messageId: ${resultSingle.messageId}');

  List<GenericMessage> messageBatch = [];
  for (int i=0; i<3; i++) {
    messageBatch.add(
        GenericMessage(
          propertyMap: {'seq': i.toString()},
          payload: Uint8List.fromList('Message $i ${DateTime.now().toIso8601String()}'.codeUnits),
      )
    );
  }

  var resultBatch = await producer.sendMessageBatch(messageBatch);
  log.info('Sent, messageId: ${resultBatch.messageId}');

  log.info('Sleeping');
  await Future.delayed(const Duration(seconds: 240));

  log.info('Closing');
  //await producer.close();
  await client.close();

  log.info('Done');
}
