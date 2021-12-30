part of pulsar_iot_client.protocol;

class ProtocolBuilder {

  static Uint8List buildSimpleCommand(GeneratedMessage message) {
    var messageBody = message.writeToBuffer();
    var bodyLen = messageBody.lengthInBytes;

    var totalLen = bodyLen + 4;

    var headerData = ByteData(8);
    headerData.setUint32(0, totalLen, Endian.big);
    headerData.setUint32(4, bodyLen, Endian.big);

    var bytesBuilder = BytesBuilder();
    bytesBuilder.add(headerData.buffer.asUint8List());
    bytesBuilder.add(messageBody);

    return bytesBuilder.toBytes();
  }

  static Uint8List buildPayloadCommandHeader(GeneratedMessage message, Uint8List metadataBody, FramePayload payload) {
    var messageBody = message.writeToBuffer();
    var messageLen = messageBody.lengthInBytes;
    var metadataLen = metadataBody.lengthInBytes;
    var payloadLen = payload.lengthInBytes;

    var totalLen = messageLen + 4 + 2 + 4 + 4 + metadataLen + payloadLen;

    var messageHeaderData = ByteData(8);
    messageHeaderData.setUint32(0, totalLen, Endian.big);
    messageHeaderData.setUint32(4, messageLen, Endian.big);

    var magicData = ByteData(2);
    magicData.setUint16(0, 0x0e01, Endian.big);

    var metadataHeaderData = ByteData(4);
    metadataHeaderData.setUint32(0, metadataLen, Endian.big);

    // checksum calculation
    var crcOutput = AccumulatorSink<CrcValue>();
    var crcInput = Crc32C().startChunkedConversion(crcOutput);
    // add metadata header
    crcInput.add(metadataHeaderData.buffer.asUint8List());

    // add metadata body
    crcInput.add(metadataBody);

    // add payload
    for (var part in payload.parts) {
      // individual part header (if present)
      if (part.header != null) {
        crcInput.add(part.header!);
      }

      // individual part body
      crcInput.add(part.body);
    }

    crcInput.close();
    var crcValue = crcOutput.events.single;

    var crcData = ByteData(4);
    crcData.setUint32(0, int.parse(crcValue.toString()), Endian.big);      // CRC-C

    var bytesBuilder = BytesBuilder();
    bytesBuilder.add(messageHeaderData.buffer.asUint8List());
    bytesBuilder.add(messageBody);
    bytesBuilder.add(magicData.buffer.asUint8List());
    bytesBuilder.add(crcData.buffer.asUint8List());
    bytesBuilder.add(metadataHeaderData.buffer.asUint8List());
    bytesBuilder.add(metadataBody);

    return bytesBuilder.toBytes();
  }

  static Uint8List buildSingleMessageHeader(Uint8List metadataBody) {
    var metadataHeaderData = ByteData(4);
    metadataHeaderData.setUint32(0, metadataBody.lengthInBytes, Endian.big);

    var bytesBuilder = BytesBuilder();
    bytesBuilder.add(metadataHeaderData.buffer.asUint8List());
    bytesBuilder.add(metadataBody);

    return bytesBuilder.toBytes();
  }

}