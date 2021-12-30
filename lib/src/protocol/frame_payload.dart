part of pulsar_iot_client.protocol;

class FramePayloadPart {
  final Uint8List? header;
  final Uint8List body;

  FramePayloadPart({
    this.header,
    required this.body,
  });

  int get lengthInBytes {
    return body.lengthInBytes + (header?.lengthInBytes ?? 0);
  }
}

class FramePayload {
  final List<FramePayloadPart> parts;

  FramePayload(this.parts);

  int get lengthInBytes {
    return parts.fold<int>(0, (prev, element) => prev + element.lengthInBytes);
  }
}
