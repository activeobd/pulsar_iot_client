///
//  Generated code. Do not modify.
//  source: PulsarApi.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class CompressionType extends $pb.ProtobufEnum {
  static const CompressionType NONE = CompressionType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NONE');
  static const CompressionType LZ4 = CompressionType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LZ4');
  static const CompressionType ZLIB = CompressionType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ZLIB');
  static const CompressionType ZSTD = CompressionType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ZSTD');
  static const CompressionType SNAPPY = CompressionType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SNAPPY');

  static const $core.List<CompressionType> values = <CompressionType> [
    NONE,
    LZ4,
    ZLIB,
    ZSTD,
    SNAPPY,
  ];

  static final $core.Map<$core.int, CompressionType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CompressionType? valueOf($core.int value) => _byValue[value];

  const CompressionType._($core.int v, $core.String n) : super(v, n);
}

class ProducerAccessMode extends $pb.ProtobufEnum {
  static const ProducerAccessMode Shared = ProducerAccessMode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Shared');
  static const ProducerAccessMode Exclusive = ProducerAccessMode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Exclusive');
  static const ProducerAccessMode WaitForExclusive = ProducerAccessMode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WaitForExclusive');

  static const $core.List<ProducerAccessMode> values = <ProducerAccessMode> [
    Shared,
    Exclusive,
    WaitForExclusive,
  ];

  static final $core.Map<$core.int, ProducerAccessMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ProducerAccessMode? valueOf($core.int value) => _byValue[value];

  const ProducerAccessMode._($core.int v, $core.String n) : super(v, n);
}

class ServerError extends $pb.ProtobufEnum {
  static const ServerError UnknownError = ServerError._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UnknownError');
  static const ServerError MetadataError = ServerError._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MetadataError');
  static const ServerError PersistenceError = ServerError._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PersistenceError');
  static const ServerError AuthenticationError = ServerError._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AuthenticationError');
  static const ServerError AuthorizationError = ServerError._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AuthorizationError');
  static const ServerError ConsumerBusy = ServerError._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ConsumerBusy');
  static const ServerError ServiceNotReady = ServerError._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ServiceNotReady');
  static const ServerError ProducerBlockedQuotaExceededError = ServerError._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ProducerBlockedQuotaExceededError');
  static const ServerError ProducerBlockedQuotaExceededException = ServerError._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ProducerBlockedQuotaExceededException');
  static const ServerError ChecksumError = ServerError._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ChecksumError');
  static const ServerError UnsupportedVersionError = ServerError._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UnsupportedVersionError');
  static const ServerError TopicNotFound = ServerError._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TopicNotFound');
  static const ServerError SubscriptionNotFound = ServerError._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SubscriptionNotFound');
  static const ServerError ConsumerNotFound = ServerError._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ConsumerNotFound');
  static const ServerError TooManyRequests = ServerError._(14, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TooManyRequests');
  static const ServerError TopicTerminatedError = ServerError._(15, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TopicTerminatedError');
  static const ServerError ProducerBusy = ServerError._(16, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ProducerBusy');
  static const ServerError InvalidTopicName = ServerError._(17, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'InvalidTopicName');
  static const ServerError IncompatibleSchema = ServerError._(18, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IncompatibleSchema');
  static const ServerError ConsumerAssignError = ServerError._(19, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ConsumerAssignError');
  static const ServerError TransactionCoordinatorNotFound = ServerError._(20, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TransactionCoordinatorNotFound');
  static const ServerError InvalidTxnStatus = ServerError._(21, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'InvalidTxnStatus');
  static const ServerError NotAllowedError = ServerError._(22, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NotAllowedError');
  static const ServerError TransactionConflict = ServerError._(23, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TransactionConflict');
  static const ServerError TransactionNotFound = ServerError._(24, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TransactionNotFound');
  static const ServerError ProducerFenced = ServerError._(25, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ProducerFenced');

  static const $core.List<ServerError> values = <ServerError> [
    UnknownError,
    MetadataError,
    PersistenceError,
    AuthenticationError,
    AuthorizationError,
    ConsumerBusy,
    ServiceNotReady,
    ProducerBlockedQuotaExceededError,
    ProducerBlockedQuotaExceededException,
    ChecksumError,
    UnsupportedVersionError,
    TopicNotFound,
    SubscriptionNotFound,
    ConsumerNotFound,
    TooManyRequests,
    TopicTerminatedError,
    ProducerBusy,
    InvalidTopicName,
    IncompatibleSchema,
    ConsumerAssignError,
    TransactionCoordinatorNotFound,
    InvalidTxnStatus,
    NotAllowedError,
    TransactionConflict,
    TransactionNotFound,
    ProducerFenced,
  ];

  static final $core.Map<$core.int, ServerError> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ServerError? valueOf($core.int value) => _byValue[value];

  const ServerError._($core.int v, $core.String n) : super(v, n);
}

class AuthMethod extends $pb.ProtobufEnum {
  static const AuthMethod AuthMethodNone = AuthMethod._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AuthMethodNone');
  static const AuthMethod AuthMethodYcaV1 = AuthMethod._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AuthMethodYcaV1');
  static const AuthMethod AuthMethodAthens = AuthMethod._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AuthMethodAthens');

  static const $core.List<AuthMethod> values = <AuthMethod> [
    AuthMethodNone,
    AuthMethodYcaV1,
    AuthMethodAthens,
  ];

  static final $core.Map<$core.int, AuthMethod> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AuthMethod? valueOf($core.int value) => _byValue[value];

  const AuthMethod._($core.int v, $core.String n) : super(v, n);
}

class ProtocolVersion extends $pb.ProtobufEnum {
  static const ProtocolVersion v0 = ProtocolVersion._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'v0');
  static const ProtocolVersion v1 = ProtocolVersion._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'v1');
  static const ProtocolVersion v2 = ProtocolVersion._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'v2');
  static const ProtocolVersion v3 = ProtocolVersion._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'v3');
  static const ProtocolVersion v4 = ProtocolVersion._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'v4');
  static const ProtocolVersion v5 = ProtocolVersion._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'v5');
  static const ProtocolVersion v6 = ProtocolVersion._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'v6');
  static const ProtocolVersion v7 = ProtocolVersion._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'v7');
  static const ProtocolVersion v8 = ProtocolVersion._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'v8');
  static const ProtocolVersion v9 = ProtocolVersion._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'v9');
  static const ProtocolVersion v10 = ProtocolVersion._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'v10');
  static const ProtocolVersion v11 = ProtocolVersion._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'v11');
  static const ProtocolVersion v12 = ProtocolVersion._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'v12');
  static const ProtocolVersion v13 = ProtocolVersion._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'v13');
  static const ProtocolVersion v14 = ProtocolVersion._(14, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'v14');
  static const ProtocolVersion v15 = ProtocolVersion._(15, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'v15');
  static const ProtocolVersion v16 = ProtocolVersion._(16, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'v16');
  static const ProtocolVersion v17 = ProtocolVersion._(17, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'v17');

  static const $core.List<ProtocolVersion> values = <ProtocolVersion> [
    v0,
    v1,
    v2,
    v3,
    v4,
    v5,
    v6,
    v7,
    v8,
    v9,
    v10,
    v11,
    v12,
    v13,
    v14,
    v15,
    v16,
    v17,
  ];

  static final $core.Map<$core.int, ProtocolVersion> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ProtocolVersion? valueOf($core.int value) => _byValue[value];

  const ProtocolVersion._($core.int v, $core.String n) : super(v, n);
}

class KeySharedMode extends $pb.ProtobufEnum {
  static const KeySharedMode AUTO_SPLIT = KeySharedMode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AUTO_SPLIT');
  static const KeySharedMode STICKY = KeySharedMode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STICKY');

  static const $core.List<KeySharedMode> values = <KeySharedMode> [
    AUTO_SPLIT,
    STICKY,
  ];

  static final $core.Map<$core.int, KeySharedMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static KeySharedMode? valueOf($core.int value) => _byValue[value];

  const KeySharedMode._($core.int v, $core.String n) : super(v, n);
}

class TxnAction extends $pb.ProtobufEnum {
  static const TxnAction COMMIT = TxnAction._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'COMMIT');
  static const TxnAction ABORT = TxnAction._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ABORT');

  static const $core.List<TxnAction> values = <TxnAction> [
    COMMIT,
    ABORT,
  ];

  static final $core.Map<$core.int, TxnAction> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TxnAction? valueOf($core.int value) => _byValue[value];

  const TxnAction._($core.int v, $core.String n) : super(v, n);
}

class Schema_Type extends $pb.ProtobufEnum {
  static const Schema_Type None = Schema_Type._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'None');
  static const Schema_Type String = Schema_Type._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'String');
  static const Schema_Type Json = Schema_Type._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Json');
  static const Schema_Type Protobuf = Schema_Type._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Protobuf');
  static const Schema_Type Avro = Schema_Type._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Avro');
  static const Schema_Type Bool = Schema_Type._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Bool');
  static const Schema_Type Int8 = Schema_Type._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Int8');
  static const Schema_Type Int16 = Schema_Type._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Int16');
  static const Schema_Type Int32 = Schema_Type._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Int32');
  static const Schema_Type Int64 = Schema_Type._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Int64');
  static const Schema_Type Float = Schema_Type._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Float');
  static const Schema_Type Double = Schema_Type._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Double');
  static const Schema_Type Date = Schema_Type._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Date');
  static const Schema_Type Time = Schema_Type._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Time');
  static const Schema_Type Timestamp = Schema_Type._(14, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Timestamp');
  static const Schema_Type KeyValue = Schema_Type._(15, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'KeyValue');
  static const Schema_Type Instant = Schema_Type._(16, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Instant');
  static const Schema_Type LocalDate = Schema_Type._(17, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LocalDate');
  static const Schema_Type LocalTime = Schema_Type._(18, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LocalTime');
  static const Schema_Type LocalDateTime = Schema_Type._(19, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LocalDateTime');
  static const Schema_Type ProtobufNative = Schema_Type._(20, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ProtobufNative');

  static const $core.List<Schema_Type> values = <Schema_Type> [
    None,
    String,
    Json,
    Protobuf,
    Avro,
    Bool,
    Int8,
    Int16,
    Int32,
    Int64,
    Float,
    Double,
    Date,
    Time,
    Timestamp,
    KeyValue,
    Instant,
    LocalDate,
    LocalTime,
    LocalDateTime,
    ProtobufNative,
  ];

  static final $core.Map<$core.int, Schema_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Schema_Type? valueOf($core.int value) => _byValue[value];

  const Schema_Type._($core.int v, $core.String n) : super(v, n);
}

class CommandSubscribe_SubType extends $pb.ProtobufEnum {
  static const CommandSubscribe_SubType Exclusive = CommandSubscribe_SubType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Exclusive');
  static const CommandSubscribe_SubType Shared = CommandSubscribe_SubType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Shared');
  static const CommandSubscribe_SubType Failover = CommandSubscribe_SubType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Failover');
  static const CommandSubscribe_SubType Key_Shared = CommandSubscribe_SubType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Key_Shared');

  static const $core.List<CommandSubscribe_SubType> values = <CommandSubscribe_SubType> [
    Exclusive,
    Shared,
    Failover,
    Key_Shared,
  ];

  static final $core.Map<$core.int, CommandSubscribe_SubType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CommandSubscribe_SubType? valueOf($core.int value) => _byValue[value];

  const CommandSubscribe_SubType._($core.int v, $core.String n) : super(v, n);
}

class CommandSubscribe_InitialPosition extends $pb.ProtobufEnum {
  static const CommandSubscribe_InitialPosition Latest = CommandSubscribe_InitialPosition._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Latest');
  static const CommandSubscribe_InitialPosition Earliest = CommandSubscribe_InitialPosition._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Earliest');

  static const $core.List<CommandSubscribe_InitialPosition> values = <CommandSubscribe_InitialPosition> [
    Latest,
    Earliest,
  ];

  static final $core.Map<$core.int, CommandSubscribe_InitialPosition> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CommandSubscribe_InitialPosition? valueOf($core.int value) => _byValue[value];

  const CommandSubscribe_InitialPosition._($core.int v, $core.String n) : super(v, n);
}

class CommandPartitionedTopicMetadataResponse_LookupType extends $pb.ProtobufEnum {
  static const CommandPartitionedTopicMetadataResponse_LookupType Success = CommandPartitionedTopicMetadataResponse_LookupType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Success');
  static const CommandPartitionedTopicMetadataResponse_LookupType Failed = CommandPartitionedTopicMetadataResponse_LookupType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Failed');

  static const $core.List<CommandPartitionedTopicMetadataResponse_LookupType> values = <CommandPartitionedTopicMetadataResponse_LookupType> [
    Success,
    Failed,
  ];

  static final $core.Map<$core.int, CommandPartitionedTopicMetadataResponse_LookupType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CommandPartitionedTopicMetadataResponse_LookupType? valueOf($core.int value) => _byValue[value];

  const CommandPartitionedTopicMetadataResponse_LookupType._($core.int v, $core.String n) : super(v, n);
}

class CommandLookupTopicResponse_LookupType extends $pb.ProtobufEnum {
  static const CommandLookupTopicResponse_LookupType Redirect = CommandLookupTopicResponse_LookupType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Redirect');
  static const CommandLookupTopicResponse_LookupType Connect = CommandLookupTopicResponse_LookupType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Connect');
  static const CommandLookupTopicResponse_LookupType Failed = CommandLookupTopicResponse_LookupType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Failed');

  static const $core.List<CommandLookupTopicResponse_LookupType> values = <CommandLookupTopicResponse_LookupType> [
    Redirect,
    Connect,
    Failed,
  ];

  static final $core.Map<$core.int, CommandLookupTopicResponse_LookupType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CommandLookupTopicResponse_LookupType? valueOf($core.int value) => _byValue[value];

  const CommandLookupTopicResponse_LookupType._($core.int v, $core.String n) : super(v, n);
}

class CommandAck_AckType extends $pb.ProtobufEnum {
  static const CommandAck_AckType Individual = CommandAck_AckType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Individual');
  static const CommandAck_AckType Cumulative = CommandAck_AckType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Cumulative');

  static const $core.List<CommandAck_AckType> values = <CommandAck_AckType> [
    Individual,
    Cumulative,
  ];

  static final $core.Map<$core.int, CommandAck_AckType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CommandAck_AckType? valueOf($core.int value) => _byValue[value];

  const CommandAck_AckType._($core.int v, $core.String n) : super(v, n);
}

class CommandAck_ValidationError extends $pb.ProtobufEnum {
  static const CommandAck_ValidationError UncompressedSizeCorruption = CommandAck_ValidationError._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UncompressedSizeCorruption');
  static const CommandAck_ValidationError DecompressionError = CommandAck_ValidationError._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DecompressionError');
  static const CommandAck_ValidationError ChecksumMismatch = CommandAck_ValidationError._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ChecksumMismatch');
  static const CommandAck_ValidationError BatchDeSerializeError = CommandAck_ValidationError._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BatchDeSerializeError');
  static const CommandAck_ValidationError DecryptionError = CommandAck_ValidationError._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DecryptionError');

  static const $core.List<CommandAck_ValidationError> values = <CommandAck_ValidationError> [
    UncompressedSizeCorruption,
    DecompressionError,
    ChecksumMismatch,
    BatchDeSerializeError,
    DecryptionError,
  ];

  static final $core.Map<$core.int, CommandAck_ValidationError> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CommandAck_ValidationError? valueOf($core.int value) => _byValue[value];

  const CommandAck_ValidationError._($core.int v, $core.String n) : super(v, n);
}

class CommandGetTopicsOfNamespace_Mode extends $pb.ProtobufEnum {
  static const CommandGetTopicsOfNamespace_Mode PERSISTENT = CommandGetTopicsOfNamespace_Mode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PERSISTENT');
  static const CommandGetTopicsOfNamespace_Mode NON_PERSISTENT = CommandGetTopicsOfNamespace_Mode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NON_PERSISTENT');
  static const CommandGetTopicsOfNamespace_Mode ALL = CommandGetTopicsOfNamespace_Mode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ALL');

  static const $core.List<CommandGetTopicsOfNamespace_Mode> values = <CommandGetTopicsOfNamespace_Mode> [
    PERSISTENT,
    NON_PERSISTENT,
    ALL,
  ];

  static final $core.Map<$core.int, CommandGetTopicsOfNamespace_Mode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CommandGetTopicsOfNamespace_Mode? valueOf($core.int value) => _byValue[value];

  const CommandGetTopicsOfNamespace_Mode._($core.int v, $core.String n) : super(v, n);
}

class BaseCommand_Type extends $pb.ProtobufEnum {
  static const BaseCommand_Type CONNECT = BaseCommand_Type._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CONNECT');
  static const BaseCommand_Type CONNECTED = BaseCommand_Type._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CONNECTED');
  static const BaseCommand_Type SUBSCRIBE = BaseCommand_Type._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUBSCRIBE');
  static const BaseCommand_Type PRODUCER = BaseCommand_Type._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PRODUCER');
  static const BaseCommand_Type SEND = BaseCommand_Type._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SEND');
  static const BaseCommand_Type SEND_RECEIPT = BaseCommand_Type._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SEND_RECEIPT');
  static const BaseCommand_Type SEND_ERROR = BaseCommand_Type._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SEND_ERROR');
  static const BaseCommand_Type MESSAGE = BaseCommand_Type._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MESSAGE');
  static const BaseCommand_Type ACK = BaseCommand_Type._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACK');
  static const BaseCommand_Type FLOW = BaseCommand_Type._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FLOW');
  static const BaseCommand_Type UNSUBSCRIBE = BaseCommand_Type._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNSUBSCRIBE');
  static const BaseCommand_Type SUCCESS = BaseCommand_Type._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const BaseCommand_Type ERROR = BaseCommand_Type._(14, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ERROR');
  static const BaseCommand_Type CLOSE_PRODUCER = BaseCommand_Type._(15, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CLOSE_PRODUCER');
  static const BaseCommand_Type CLOSE_CONSUMER = BaseCommand_Type._(16, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CLOSE_CONSUMER');
  static const BaseCommand_Type PRODUCER_SUCCESS = BaseCommand_Type._(17, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PRODUCER_SUCCESS');
  static const BaseCommand_Type PING = BaseCommand_Type._(18, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PING');
  static const BaseCommand_Type PONG = BaseCommand_Type._(19, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PONG');
  static const BaseCommand_Type REDELIVER_UNACKNOWLEDGED_MESSAGES = BaseCommand_Type._(20, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REDELIVER_UNACKNOWLEDGED_MESSAGES');
  static const BaseCommand_Type PARTITIONED_METADATA = BaseCommand_Type._(21, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PARTITIONED_METADATA');
  static const BaseCommand_Type PARTITIONED_METADATA_RESPONSE = BaseCommand_Type._(22, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PARTITIONED_METADATA_RESPONSE');
  static const BaseCommand_Type LOOKUP = BaseCommand_Type._(23, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LOOKUP');
  static const BaseCommand_Type LOOKUP_RESPONSE = BaseCommand_Type._(24, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LOOKUP_RESPONSE');
  static const BaseCommand_Type CONSUMER_STATS = BaseCommand_Type._(25, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CONSUMER_STATS');
  static const BaseCommand_Type CONSUMER_STATS_RESPONSE = BaseCommand_Type._(26, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CONSUMER_STATS_RESPONSE');
  static const BaseCommand_Type REACHED_END_OF_TOPIC = BaseCommand_Type._(27, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REACHED_END_OF_TOPIC');
  static const BaseCommand_Type SEEK = BaseCommand_Type._(28, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SEEK');
  static const BaseCommand_Type GET_LAST_MESSAGE_ID = BaseCommand_Type._(29, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GET_LAST_MESSAGE_ID');
  static const BaseCommand_Type GET_LAST_MESSAGE_ID_RESPONSE = BaseCommand_Type._(30, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GET_LAST_MESSAGE_ID_RESPONSE');
  static const BaseCommand_Type ACTIVE_CONSUMER_CHANGE = BaseCommand_Type._(31, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTIVE_CONSUMER_CHANGE');
  static const BaseCommand_Type GET_TOPICS_OF_NAMESPACE = BaseCommand_Type._(32, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GET_TOPICS_OF_NAMESPACE');
  static const BaseCommand_Type GET_TOPICS_OF_NAMESPACE_RESPONSE = BaseCommand_Type._(33, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GET_TOPICS_OF_NAMESPACE_RESPONSE');
  static const BaseCommand_Type GET_SCHEMA = BaseCommand_Type._(34, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GET_SCHEMA');
  static const BaseCommand_Type GET_SCHEMA_RESPONSE = BaseCommand_Type._(35, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GET_SCHEMA_RESPONSE');
  static const BaseCommand_Type AUTH_CHALLENGE = BaseCommand_Type._(36, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AUTH_CHALLENGE');
  static const BaseCommand_Type AUTH_RESPONSE = BaseCommand_Type._(37, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AUTH_RESPONSE');
  static const BaseCommand_Type ACK_RESPONSE = BaseCommand_Type._(38, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACK_RESPONSE');
  static const BaseCommand_Type GET_OR_CREATE_SCHEMA = BaseCommand_Type._(39, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GET_OR_CREATE_SCHEMA');
  static const BaseCommand_Type GET_OR_CREATE_SCHEMA_RESPONSE = BaseCommand_Type._(40, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GET_OR_CREATE_SCHEMA_RESPONSE');
  static const BaseCommand_Type NEW_TXN = BaseCommand_Type._(50, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NEW_TXN');
  static const BaseCommand_Type NEW_TXN_RESPONSE = BaseCommand_Type._(51, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NEW_TXN_RESPONSE');
  static const BaseCommand_Type ADD_PARTITION_TO_TXN = BaseCommand_Type._(52, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ADD_PARTITION_TO_TXN');
  static const BaseCommand_Type ADD_PARTITION_TO_TXN_RESPONSE = BaseCommand_Type._(53, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ADD_PARTITION_TO_TXN_RESPONSE');
  static const BaseCommand_Type ADD_SUBSCRIPTION_TO_TXN = BaseCommand_Type._(54, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ADD_SUBSCRIPTION_TO_TXN');
  static const BaseCommand_Type ADD_SUBSCRIPTION_TO_TXN_RESPONSE = BaseCommand_Type._(55, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ADD_SUBSCRIPTION_TO_TXN_RESPONSE');
  static const BaseCommand_Type END_TXN = BaseCommand_Type._(56, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'END_TXN');
  static const BaseCommand_Type END_TXN_RESPONSE = BaseCommand_Type._(57, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'END_TXN_RESPONSE');
  static const BaseCommand_Type END_TXN_ON_PARTITION = BaseCommand_Type._(58, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'END_TXN_ON_PARTITION');
  static const BaseCommand_Type END_TXN_ON_PARTITION_RESPONSE = BaseCommand_Type._(59, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'END_TXN_ON_PARTITION_RESPONSE');
  static const BaseCommand_Type END_TXN_ON_SUBSCRIPTION = BaseCommand_Type._(60, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'END_TXN_ON_SUBSCRIPTION');
  static const BaseCommand_Type END_TXN_ON_SUBSCRIPTION_RESPONSE = BaseCommand_Type._(61, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'END_TXN_ON_SUBSCRIPTION_RESPONSE');

  static const $core.List<BaseCommand_Type> values = <BaseCommand_Type> [
    CONNECT,
    CONNECTED,
    SUBSCRIBE,
    PRODUCER,
    SEND,
    SEND_RECEIPT,
    SEND_ERROR,
    MESSAGE,
    ACK,
    FLOW,
    UNSUBSCRIBE,
    SUCCESS,
    ERROR,
    CLOSE_PRODUCER,
    CLOSE_CONSUMER,
    PRODUCER_SUCCESS,
    PING,
    PONG,
    REDELIVER_UNACKNOWLEDGED_MESSAGES,
    PARTITIONED_METADATA,
    PARTITIONED_METADATA_RESPONSE,
    LOOKUP,
    LOOKUP_RESPONSE,
    CONSUMER_STATS,
    CONSUMER_STATS_RESPONSE,
    REACHED_END_OF_TOPIC,
    SEEK,
    GET_LAST_MESSAGE_ID,
    GET_LAST_MESSAGE_ID_RESPONSE,
    ACTIVE_CONSUMER_CHANGE,
    GET_TOPICS_OF_NAMESPACE,
    GET_TOPICS_OF_NAMESPACE_RESPONSE,
    GET_SCHEMA,
    GET_SCHEMA_RESPONSE,
    AUTH_CHALLENGE,
    AUTH_RESPONSE,
    ACK_RESPONSE,
    GET_OR_CREATE_SCHEMA,
    GET_OR_CREATE_SCHEMA_RESPONSE,
    NEW_TXN,
    NEW_TXN_RESPONSE,
    ADD_PARTITION_TO_TXN,
    ADD_PARTITION_TO_TXN_RESPONSE,
    ADD_SUBSCRIPTION_TO_TXN,
    ADD_SUBSCRIPTION_TO_TXN_RESPONSE,
    END_TXN,
    END_TXN_RESPONSE,
    END_TXN_ON_PARTITION,
    END_TXN_ON_PARTITION_RESPONSE,
    END_TXN_ON_SUBSCRIPTION,
    END_TXN_ON_SUBSCRIPTION_RESPONSE,
  ];

  static final $core.Map<$core.int, BaseCommand_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BaseCommand_Type? valueOf($core.int value) => _byValue[value];

  const BaseCommand_Type._($core.int v, $core.String n) : super(v, n);
}

