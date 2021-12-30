part of pulsar_iot_client.protocol;

class FrameWriter {
  final Sink? _sink;
  int maxFrameSize = Constants.maxFrameSize;    // default max message size (may be overridden by broker)

  FrameWriter(this._sink);

  void sendSimpleCommand(BaseCommand command) {
    // dump
    log.fine('--> ' + command.toString());

    // build as simple command
    var buf = ProtocolBuilder.buildSimpleCommand(command);

    // safety check
    _checkFrameSizeLimit(buf.length);

    // write to socket
    _writeSocket(buf);
  }

  void sendPayloadCommand(BaseCommand command, MessageMetadata metadata, FramePayload payload) {
    // dump
    log.fine('--> ' + command.toString() + ' metadata:' + metadata.toString());

    // build header (combined)
    var headerBuf = ProtocolBuilder.buildPayloadCommandHeader(command, metadata.writeToBuffer(), payload);

    // safety check
    _checkFrameSizeLimit(headerBuf.lengthInBytes + payload.lengthInBytes);

    // write header (combined)
    _writeSocket(headerBuf);

    // write payload
    for (var part in payload.parts) {
      // write individual part header (if present)
      if (part.header != null) {
        _writeSocket(part.header!);
      }

      // write individual part body
      _writeSocket(part.body);
    }
  }

  void _writeSocket(Uint8List buf) {
    if (_sink == null) {
      log.info('Frame skipped on disconnected socket');
      return;
    }

    // dump
    log.finest('-> (' + buf.lengthInBytes.toString() + ' bytes) ' + buf.toString());

    // add data to socket
    _sink!.add(buf);
  }

  void _checkFrameSizeLimit(int len) {
    if (len > maxFrameSize) {
      throw OversizeFrameException(len);
    }
  }

}