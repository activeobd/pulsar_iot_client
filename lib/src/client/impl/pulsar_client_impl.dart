part of pulsar_iot_client.client;

class _PulsarClientImpl extends _ClosableActorCallback implements PulsarClient {
  late PulsarClientSettings settings;
  late _BrokerConnectionPool _brokerConnectionPool;
  Int64 _actorId = Int64.ZERO;      // same id pool for all actors (producers, consumers, ...)
  final Map<int, List<Int64>> brokerActorListMap = {};
  final Map<Int64, _PulsarClientActor> actorMap = {};

  final _PulsarClientProducerActorDelegate _producerActorDelegate = _PulsarClientProducerActorDelegate();
  final _PulsarClientConsumerActorDelegate _consumerActorDelegate = _PulsarClientConsumerActorDelegate();

  final _clientErrorStreamController = StreamController<Object>();

  _PulsarClientImpl({PulsarClientSettings? settings}) {
    this.settings = settings ?? PulsarClientSettings();
    _brokerConnectionPool = _BrokerConnectionPool(settings: this.settings);
  }

  @override
  Stream<Object> get clientErrorStream => _clientErrorStreamController.stream;

  @override
  Future<Producer> newProducer(ProducerCreateParams params) {
    var descriptor = _PulsarClientActorDescriptor(
      createParams: params,
      actorDelegate: _producerActorDelegate,
      actorName: 'producer',
    );

    return _newActor<Producer>(descriptor);
  }

  @override
  Future<Consumer> newConsumer(ConsumerCreateParams params) {
    var descriptor = _PulsarClientActorDescriptor(
      createParams: params,
      actorDelegate: _consumerActorDelegate,
      actorName: 'consumer',
    );

    return _newActor<Consumer>(descriptor);
  }

  Future<TActor> _newActor<TActor>(_PulsarClientActorDescriptor descriptor) {
    Completer<TActor>? actorCompleter = Completer<TActor>();

    _createActor(descriptor, 0)
        .then((_PulsarClientActorProperties actorProperties) {
          if (actorCompleter == null) return;    // prevents completed actor registering

          // actor instance
          var actor = descriptor.actorDelegate.actorFor(
            properties: actorProperties,
            descriptor: descriptor,
            rebalanceTime: settings.rebalanceTimeMax,
            closableActorCallback: this
          );

          // register
          _registerActor(actor);

          // complete with result
          actorCompleter?.complete(actor);
          actorCompleter = null;
        })
            .catchError((error, trace) {
          actorCompleter?.completeError(error, trace);
          actorCompleter = null;
        });

    return actorCompleter!.future;
  }

  Future<_PulsarClientActorProperties> _createActor(_PulsarClientActorDescriptor descriptor, int redirectCount) {   // low-level internal routine
    if (redirectCount >= settings.maxRedirects) {
      return Future.error(RedirectLimitException());
    }

    Completer<_PulsarClientActorProperties>? actorCompleter = Completer<_PulsarClientActorProperties>();

    _lookupTopicBrokerUrl(descriptor.createParams.topic, settings.serviceUrl, false, redirectCount) // initial lookup request is to the service Url, authoritative false
        .then((String? brokerUrl) {
          // null result means normal broker shutdown during lookup - this is not an error in general sense. The client must restart the process from a scratch
          if (brokerUrl == null) {
            // recursively call the same (this) method
            _createActor(descriptor, redirectCount + 1)
                .then((_PulsarClientActorProperties value) {
                  actorCompleter?.complete(value);
                  actorCompleter = null;
                })
                .catchError((error, trace) {
                  actorCompleter?.completeError(error, trace);
                  actorCompleter = null;
                });
          } else {
            // create actor on the broker resolved
            _createActorOnBroker(brokerUrl, descriptor, redirectCount)
                .then((_PulsarClientActorProperties value) {
                  actorCompleter?.complete(value);
                  actorCompleter = null;
                })
                .catchError((error, trace) {
                  actorCompleter?.completeError(error, trace);
                  actorCompleter = null;
                });
          }
        })
        .catchError((error, trace) {
          // complete with error
          actorCompleter?.completeError(error, trace);
          actorCompleter = null;
        });

    return actorCompleter!.future;
  }

  Future<String?> _lookupTopicBrokerUrl(String topic, String brokerUrl, bool authoritative, int redirectCount) {
    if (redirectCount >= settings.maxRedirects) {
      return Future.error(RedirectLimitException());
    }

    Completer<String?>? lookupCompleter = Completer<String?>();

    var brokerUri = Uri.parse(brokerUrl);
    _connectBroker(brokerUri: brokerUri)
        .then((_IBrokerConnection brokerConnection) {

          // setup error listener on broker
          StreamSubscription? connectionErrorSubscription;
          connectionErrorSubscription = brokerConnection.connectionErrorStream.listen((Object error) {
            if (error is BrokerShutdownException) {   // normal broker shutdown. The lookup needs to be restarted completely
              // complete with result null
              lookupCompleter?.complete(null);
              lookupCompleter = null;
            } else {                                  // any other error means failure
              log.severe("Failure during topic $topic lookup failure on broker $brokerUrl. $error");
              lookupCompleter?.completeError(error);
              lookupCompleter = null;
            }

            // cancel error stream subscription
            connectionErrorSubscription?.cancel();
            connectionErrorSubscription = null;
          });

          // initial lookup request
          brokerConnection
              .lookupTopic(topic, authoritative)
              .then((_TopicLookupResult topicLookupResult) {
                // lookup done, cancel error stream subscription
                connectionErrorSubscription?.cancel();
                connectionErrorSubscription = null;

                // select next broker Url according to the current schema (if possible)
                var nextBrokerUrl = ((topicLookupResult.urlTLS != null) && (brokerUri.scheme == Constants.schemeTLS)) ? topicLookupResult.urlTLS : topicLookupResult.url;

                if ((topicLookupResult.type == CommandLookupTopicResponse_LookupType.Redirect) && (nextBrokerUrl != null)) {    // lookup redirect
                  // recursive call
                  _lookupTopicBrokerUrl(topic, nextBrokerUrl, topicLookupResult.authoritative ?? false, redirectCount + 1)    // lookup request is to the next broker Url, authoritative (default = false)
                      .then((String? targetUrl) {
                        // complete with result (success). Note the result MAY be null
                        lookupCompleter?.complete(targetUrl);
                        lookupCompleter = null;
                      })
                      .catchError((error, trace) {
                        // complete with error
                        lookupCompleter?.completeError(error, trace);
                        lookupCompleter = null;
                  });
                } else if (topicLookupResult.type == CommandLookupTopicResponse_LookupType.Connect) {  // resolution done, target broker Url is provided in response
                  // complete with result (success)
                  lookupCompleter?.complete(nextBrokerUrl);
                  lookupCompleter = null;
                } else if (topicLookupResult.type == CommandLookupTopicResponse_LookupType.Failed) {    // resolution failed
                  // complete with error
                  lookupCompleter?.completeError(BrokerErrorException(topicLookupResult.errorType ?? 'Unknown failure', topicLookupResult.errorMessage ?? ''));
                  lookupCompleter = null;
                }
              })
              .catchError((error, trace) {
                log.severe("Topic $topic lookup failure on broker $brokerUrl. $error $trace");

                // complete with error
                lookupCompleter?.completeError(error, trace);
                lookupCompleter = null;

                // cancel error stream subscription
                connectionErrorSubscription?.cancel();
                connectionErrorSubscription = null;
              });
        })
        .catchError((error, trace) {
          log.severe("Broker $brokerUrl connect failure during topic $topic lookup. $error $trace");
          // complete with error
          lookupCompleter?.completeError(error, trace);
          lookupCompleter = null;
        });

    return lookupCompleter!.future;
  }

  Future<_PulsarClientActorProperties> _createActorOnBroker(String brokerUrl, _PulsarClientActorDescriptor descriptor, int redirectCount) {
    Completer<_PulsarClientActorProperties>? actorCompleter = Completer<_PulsarClientActorProperties>();

    var brokerUri = Uri.parse(brokerUrl);
    _connectBroker(brokerUri: brokerUri)
      .then((_IBrokerConnection brokerConnection) {

      // setup error listener on broker
      StreamSubscription? connectionErrorSubscription;
      connectionErrorSubscription = brokerConnection.connectionErrorStream.listen((Object error) {
          if (error is BrokerShutdownException) {   // normal broker shutdown. The process needs to be restarted completely
            // recursively call the same (this) method
            _createActor(descriptor, redirectCount + 1)
              .then((_PulsarClientActorProperties value) {
                // complete with value (success)
                actorCompleter?.complete(value);
                actorCompleter = null;
              })
              .catchError((error, trace) {
                // complete with error
                actorCompleter?.completeError(error, trace);
                actorCompleter = null;
              });
          } else {                                  // any other error means failure
            log.severe("Failure during ${descriptor.actorName} creation for topic ${descriptor.createParams.topic} on broker $brokerUrl. $error");

            // complete with error
            actorCompleter?.completeError(error);
            actorCompleter = null;
          }

          // cancel error stream subscription
          connectionErrorSubscription?.cancel();
          connectionErrorSubscription = null;
        });

        // increment actor id
        _actorId += Int64.ONE;
        // save current value (async access in the future)
        var actorId = _actorId;

        descriptor.actorDelegate.createActorOnBroker(brokerConnection: brokerConnection, id: actorId, params: descriptor.createParams)
          .then((_PulsarClientActorCreateResult actorCreateResult) {
            // actor created, cancel error stream subscription
            connectionErrorSubscription?.cancel();
            connectionErrorSubscription = null;

            var actorProperties = descriptor.actorDelegate.propertiesFor(
              brokerConnection: brokerConnection,
              id: actorId,
              createParams: descriptor.createParams,
              createResult: actorCreateResult
            );

            // complete with result
            actorCompleter?.complete(actorProperties);
            actorCompleter = null;
          })
          .catchError((error, trace) {
            log.severe("Failure during ${descriptor.actorName} creation for topic ${descriptor.createParams.topic} on broker $brokerUrl. $error $trace");

            // complete with error
            actorCompleter?.completeError(error, trace);
            actorCompleter = null;

            // cancel error stream subscription
            connectionErrorSubscription?.cancel();
            connectionErrorSubscription = null;
          });
      })
      .catchError((error, trace) {
        log.severe("Broker $brokerUrl connect failure during ${descriptor.actorName} creation for topic ${descriptor.createParams.topic}. $error $trace");

        // complete with error
        actorCompleter?.completeError(error, trace);
        actorCompleter = null;
      });

    return actorCompleter!.future;
  }

  void _registerActor(_PulsarClientActor actor) {
    var brokerConnection = actor.properties.brokerConnection;
    var actorId = actor.properties.actorId;

    // register actor itself
    actorMap[actorId] = actor;

    // register on underlying broker connection
    var connectionId = brokerConnection.connectionId;
    if (!brokerActorListMap.containsKey(connectionId)) {
      brokerActorListMap[connectionId] = [];   // initialize with empty list
    }

    brokerActorListMap[connectionId]!.add(actorId);

    // make actor ready (connected)
    actor.setConnected();
  }

  _PulsarClientActor? _unregisterActor(Int64 actorId) {
    // unregister in actor map
    _PulsarClientActor? actor = actorMap.remove(actorId);

    if (actor != null) {
      // make actor as not ready (disconnected)
      actor.setDisconnected();

      // unregister on underlying broker connection
      var brokerConnection = actor.properties.brokerConnection;
      var connectionId = brokerConnection.connectionId;

      if (brokerActorListMap.containsKey(connectionId)) {
        var actorList = brokerActorListMap[connectionId];
        actorList!.remove(actorId);
      }
    }

    return actor;
  }

  Future<_IBrokerConnection> _connectBroker({required Uri brokerUri}) {
    Completer<_IBrokerConnection>? connectBrokerCompleter = Completer<_IBrokerConnection>();

    _brokerConnectionPool
        .connect(brokerUri: brokerUri)
        .then((_IBrokerConnection brokerConnection) {
          if (connectBrokerCompleter == null) return;    // prevents completed broker registering

          // setup error listener on broker
          StreamSubscription? connectionErrorSubscription;
          connectionErrorSubscription = brokerConnection.connectionErrorStream.listen((Object error) {
            if (error is BrokerShutdownException)  {                               // normal broker shutdown
              var connectionId = brokerConnection.connectionId;
              var actorIdList = brokerActorListMap.remove(connectionId);
              var actorList = actorIdList?.map(                             // type: Iterable<PulsarClientActor?>?
                  (Int64 actorId) => _unregisterActor(actorId)              // unregister the actor (client-level)
              );

              // release broker connection (prior to starting new lookup/recovery)
              // Note: there is a slight chance for the new lookup being redirected to the same broker, a new broker connection will be opened then
              _brokerConnectionPool
                  .release(brokerConnection)
                  .catchError((error, trace) {});               // mute broker closing errors

              // recover all actors associated with this connection (if any)
              if (actorList != null) {
                for (var actor in actorList) {
                  if (actor != null) {
                    _recoverActor(actor);                       // try to recover particular actor
                  }
                }
              }

              // connection not longer used, cancel error stream subscription
              connectionErrorSubscription?.cancel();
              connectionErrorSubscription = null;
            } else if ((error is BrokerProducerClosedException) || (error is BrokerConsumerClosedException)) {                  // producer/consumer unloaded from broker
              var actorId = (error is BrokerProducerClosedException) ? error.producerId : (error as BrokerConsumerClosedException).consumerId;    // get actor id (either producer or consumer id)
              var actor = _unregisterActor(actorId);                     // unregister the producer/actor (client-level)

              if (actor != null) {
                _recoverActor(actor);                                       // try to recover particular producer
              }
            } else {                                                        // other error type
              // pipe to the client-level error stream
              _postError(error);
            }
          });

          connectBrokerCompleter?.complete(brokerConnection);
          connectBrokerCompleter = null;
        })
        .catchError((error, trace) {
          connectBrokerCompleter?.completeError(error, trace);
          connectBrokerCompleter = null;
        });

    return connectBrokerCompleter!.future;
  }

  void _recoverActor(_PulsarClientActor actor) {
    var topic = actor.descriptor.createParams.topic;

    log.info("Recovering ${actor.descriptor.actorName} on topic $topic ${actor.location}");

    // wait the rebalance time
    Future.delayed(settings.rebalanceTime).then((_) {
      // re-create the actor
      _createActor(actor.descriptor, 0)
          .then((_PulsarClientActorProperties actorProperties)  {
            // successfully re-created the actor, update instance properties
            actor.moveTo(actorProperties);

            // register actor back with the new id/properties (makes it ready to use again)
            _registerActor(actor);
          })
          .catchError((error, trace) {
            log.severe("Failed to recover ${actor.descriptor.actorName} on topic $topic ${actor.location}. $error $trace");

            // set (mark) the actor as dropped. Further calls on it shall fire exceptions (i.e. Future errors)
            actor.setDropped();

            // post the client-level error
            _postError(actor.droppedExceptionFactory());
          });
    });
  }

  void _postError(Object e) {
    if (_clientErrorStreamController.hasListener && !_clientErrorStreamController.isClosed) {
      _clientErrorStreamController.add(e);
    }
  }

  @override
  void closeActor(_PulsarClientActor actor) {
    var actorId = actor.properties.actorId;

    // unregister actor
    _unregisterActor(actorId);

    // set actor as closed
    actor.setClosed();
  }

  @override
  Future close() {
    Completer? closeCompleter = Completer();

    var closeFutures = <Future>[];
    for (_PulsarClientActor actor in actorMap.values) {
      closeFutures.add(actor.close());
    }

    // future waiting for all actor close() futures to complete
    Future.wait(closeFutures)
      .then((_) {
        // close broker connection pool (release all connections)
        _brokerConnectionPool.close()
            .then((_) {
              _clientErrorStreamController.close();

              // complete (success)
              closeCompleter?.complete();
              closeCompleter = null;
            })
            .catchError((error, trace) {
              // complete with error
              closeCompleter?.completeError(error, trace);
              closeCompleter = null;
            });
      })
      .catchError((error, trace) {
        // complete with error
        closeCompleter?.completeError(error, trace);
        closeCompleter = null;
      });

    return closeCompleter!.future;
  }

}
