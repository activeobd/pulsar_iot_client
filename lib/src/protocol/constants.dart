part of pulsar_iot_client.protocol;

class Constants {
  static const int maxFrameSize = 5242880;    // the maximum allowable size of a single frame is 5 MB
  static const int frameHeaderSize = 8;       // totalSize (4 bytes) + commandSize (4 bytes)
  static const int payloadFormatMagicNumber = 0x0e01;  // magic number

  static const clientVersion = '2.8.1';
  static final protocolVersion = ProtocolVersion.v17.value;
  static const authMethodToken = 'token';

  static const schemePlain = 'pulsar';
  static const schemeTLS = 'pulsar+ssl';
}