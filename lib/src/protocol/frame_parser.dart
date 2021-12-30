part of pulsar_iot_client.protocol;

class FrameParser {
  final List<int> _input = [];
  int _requestedBytes;
  int _commandLen;
  bool _frameBody;

  FrameParser():
        _requestedBytes = Constants.frameHeaderSize,
        _frameBody = false,
        _commandLen = 0
  ;

  void handleData(List<int> chunk, EventSink<ProtocolCommand> sink) {
    var chunkPos = 0;

    try {
      while (chunkPos < chunk.length) { // consume chunk into the input buffer in loop
        var chunkRemains = chunk.length - chunkPos;

        if (chunkRemains < _requestedBytes) { // the chunk remains doesn't complete request, consume it completely
          _input.addAll(chunk.sublist(chunkPos));
          _requestedBytes -= chunkRemains;

          break;
        } else {    // the chunk remains complete the requested data, consume it (partly)
          _input.addAll(chunk.sublist(chunkPos, chunkPos + _requestedBytes));
          chunkPos += _requestedBytes;

          // process data
          if (!_frameBody) { // frame header data
            assert(_input.length == Constants.frameHeaderSize);

            // parse header
            var headerData = ByteData.sublistView(Uint8List.fromList(_input));
            var totalLen = headerData.getUint32(0, Endian.big);     // the size of the frame, counting everything that comes after it (in bytes)
            _commandLen = headerData.getUint32(4, Endian.big);      // the size of the protobuf-serialized command

            _requestedBytes = (totalLen + 4) - _input.length; // remaining bytes in this frame

            if (_commandLen > _requestedBytes) {
              log.severe('Command size is larger than frame body $_commandLen > $_requestedBytes');
              throw InvalidFrameException();
            }

            if (_requestedBytes <= 0) {                 // no remaining data
              _restartConsuming();
            } else {
              _startBodyConsuming();
            }
          } else {    // frame body data
            // decode base command
            var commandDecoded = BaseCommand.fromBuffer(_input.sublist(0, _commandLen));

            ProtocolCommand protocolCommand;
            if (_input.length > _commandLen) {      // frame contains extra data -> payload command

              if (_input.length < _commandLen + 10) {   // at least extra 10 bytes are required
                log.severe('Payload too small $_input.length < ($_commandLen + 10)');
                throw InvalidFrameException();
              }

              var payloadControlData = ByteData.sublistView(Uint8List.fromList(_input.sublist(_commandLen, _commandLen + 10)));
              var magicNumber = payloadControlData.getUint16(0, Endian.big);        // A 2-byte byte array (0x0e01) identifying the current format (UInt16 number, not a byte sequence)
              var checksum = payloadControlData.getUint32(2, Endian.big);           // A CRC32-C checksum of everything that comes after it (4 bytes)
              var metadataSize = payloadControlData.getUint32(6, Endian.big);       // The size of the message metadata

              if (metadataSize > (_input.length - (_commandLen + 10))) {
                log.severe('Metadata size is larger than remaining payload $metadataSize > ${_input.length - (_commandLen + 10)}');
                throw InvalidFrameException();
              }

              if (magicNumber != Constants.payloadFormatMagicNumber) {
                log.severe('Invalid payload magic number $magicNumber');
                throw InvalidFrameException();
              }

              // calculate metadata+payload checksum
              var crcIn = CrcValue(BigInt.from(checksum));
              var crcOut = Crc32C().convert(_input.sublist(_commandLen + 6));   // everything excluding message (command) + magicNumber (2 bytes) + checksum (4 bytes), i.e. metadataSize is the part of CRCed content

              // compare checksums
              if (!(crcIn == crcOut)) {
                log.severe('Payload CRC mismatch $crcIn != $crcOut');
                throw InvalidFrameException();
              }

              // decode metadata
              var metadataDecoded = MessageMetadata.fromBuffer(_input.sublist(_commandLen + 10, _commandLen + 10 + metadataSize));
              // copy payload as is
              var payload = Uint8List.fromList(_input.sublist(_commandLen + 10 + metadataSize));

              protocolCommand = ProtocolCommand(commandDecoded, metadataDecoded, payload);
            } else {
              // base command
              protocolCommand = ProtocolCommand(commandDecoded);
            }

            // emit result
            sink.add(protocolCommand);

            // restart to the next command consuming
            _restartConsuming();
          }

        }
      }
    } catch (ex) {
      // restart header consuming
      _restartConsuming();

      sink.addError(ex);
    }
  }

  void _restartConsuming() {
    // restart command consumption
    _requestedBytes = Constants.frameHeaderSize;
    _frameBody = false;

    // clear input buffer
    _input.clear();
  }

  void _startBodyConsuming() {
    // start consuming frame body
    _frameBody = true;

    // clear input buffer
    _input.clear();
  }

  void handleDone(EventSink<ProtocolCommand> sink) {
    sink.close();
  }

  void handleError(Object error, StackTrace stackTrace, EventSink<ProtocolCommand> sink) {
    sink.addError(error, stackTrace);
  }

  StreamTransformer<List<int>, ProtocolCommand> get transformer =>
      StreamTransformer<List<int>, ProtocolCommand>.fromHandlers(
          handleData: handleData,
          handleDone: handleDone,
          handleError: handleError);
}
