part of pulsar_iot_client.client;

abstract class _ProducerActor implements Producer, _PulsarClientActor<_ProducerProperties> {}

class _ProducerImpl extends _PulsarClientActorImpl<_ProducerProperties> implements _ProducerActor  {

  _ProducerImpl({
    required descriptor,
    required properties,
    required rebalanceTime,
    required closableActorCallback,
  }) : super(
      descriptor: descriptor,
      properties: properties,
      rebalanceTime : rebalanceTime,
      closableActorCallback: closableActorCallback,
  );

  @override
  Future<ProducerSendResult> sendMessage(GenericMessage message) {
    return _commandGeneric<ProducerSendResult>(_sendSingleMessage, message);
  }

  @override
  Future<ProducerSendResult> sendMessageBatch(List<GenericMessage> messageList) {
    return _commandGeneric<ProducerSendResult>(_sendMessageBatch, messageList);
  }

  Future<ProducerSendResult> _sendSingleMessage(GenericMessage message) {
    // increment sequence id
    _sequenceId += Int64.ONE;

    // metadata
    var messageMetadata = MessageMetadata(
      producerName: properties.producerName,
      sequenceId: _sequenceId,
      publishTime: Int64(DateTime.now().toUtc().millisecondsSinceEpoch),          // [PULSAR] The publish timestamp in Unix time (i.e. as the number of milliseconds since January 1st, 1970 in UTC)
      properties: message.propertyMap?.entries.map((entry) => KeyValue(key: entry.key, value: entry.value)),
    );

    // single-message payload
    var framePayload = FramePayload([
      FramePayloadPart(body: message.payload),
    ]);

    // send
    return properties.brokerConnection.sendFrame(properties.producerId, properties.producerName, _sequenceId, messageMetadata, framePayload, 1);
  }

  Future<ProducerSendResult> _sendMessageBatch(List<GenericMessage> messageList) {
    var batchSize = messageList.length;

    // increment sequence id
    _sequenceId += Int64.ONE;

    // message (upper level) metadata (without properties)
    var messageMetadata = MessageMetadata(
      producerName: properties.producerName,
      sequenceId: _sequenceId,
      publishTime: Int64(DateTime.now().toUtc().millisecondsSinceEpoch),          // [PULSAR] The publish timestamp in Unix time (i.e. as the number of milliseconds since January 1st, 1970 in UTC)
      numMessagesInBatch: batchSize,                                              // [PULSAR] If this message is really a batch of multiple entries, this field must be set to the number of messages in the batch
    );

    // create message parts
    List<FramePayloadPart> parts = [];
    for (var message in messageList) {
      // per-message metadata (includes properties)
      var singleMessageMetadata = SingleMessageMetadata(
        payloadSize: message.payload.lengthInBytes,
        properties: message.propertyMap?.entries.map((entry) => KeyValue(key: entry.key, value: entry.value)),
      );

      // build single part header
      var header = ProtocolBuilder.buildSingleMessageHeader(singleMessageMetadata.writeToBuffer());

      // add part
      parts.add(FramePayloadPart(
        header: header,
        body: message.payload,
      ));
    }

    // multi-part (batch) payload
    var framePayload = FramePayload(parts);

    // send
    return properties.brokerConnection.sendFrame(properties.producerId, properties.producerName, _sequenceId, messageMetadata, framePayload, batchSize);
  }

  Future _closeCommand() {
    return properties.brokerConnection.closeProducer(properties.producerId);
  }

  @override
  Future _close() {
    // closing on broker connection
    return _commandGeneric(_closeCommand);
  }

  @override
  Exception droppedExceptionFactory() {
    return ProducerDroppedException(properties.producerId, properties.producerName);
  }

  @override
  String _locationProperties(_ProducerProperties properties) {
    return '[${properties.producerId} / ${properties.producerName} at ${properties.brokerConnection.brokerUri}]';
  }

}
