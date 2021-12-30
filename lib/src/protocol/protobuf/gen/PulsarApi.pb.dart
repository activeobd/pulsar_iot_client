///
//  Generated code. Do not modify.
//  source: PulsarApi.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'PulsarApi.pbenum.dart';

export 'PulsarApi.pbenum.dart';

class Schema extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Schema', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schemaData', $pb.PbFieldType.QY)
    ..e<Schema_Type>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.QE, defaultOrMaker: Schema_Type.None, valueOf: Schema_Type.valueOf, enumValues: Schema_Type.values)
    ..pc<KeyValue>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'properties', $pb.PbFieldType.PM, subBuilder: KeyValue.create)
  ;

  Schema._() : super();
  factory Schema({
    $core.String? name,
    $core.List<$core.int>? schemaData,
    Schema_Type? type,
    $core.Iterable<KeyValue>? properties,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (schemaData != null) {
      _result.schemaData = schemaData;
    }
    if (type != null) {
      _result.type = type;
    }
    if (properties != null) {
      _result.properties.addAll(properties);
    }
    return _result;
  }
  factory Schema.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Schema.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Schema clone() => Schema()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Schema copyWith(void Function(Schema) updates) => super.copyWith((message) => updates(message as Schema)) as Schema; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Schema create() => Schema._();
  Schema createEmptyInstance() => create();
  static $pb.PbList<Schema> createRepeated() => $pb.PbList<Schema>();
  @$core.pragma('dart2js:noInline')
  static Schema getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Schema>(create);
  static Schema? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get schemaData => $_getN(1);
  @$pb.TagNumber(3)
  set schemaData($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasSchemaData() => $_has(1);
  @$pb.TagNumber(3)
  void clearSchemaData() => clearField(3);

  @$pb.TagNumber(4)
  Schema_Type get type => $_getN(2);
  @$pb.TagNumber(4)
  set type(Schema_Type v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<KeyValue> get properties => $_getList(3);
}

class MessageIdData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageIdData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ledgerId', $pb.PbFieldType.QU6, protoName: 'ledgerId', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entryId', $pb.PbFieldType.QU6, protoName: 'entryId', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'partition', $pb.PbFieldType.O3, defaultOrMaker: -1)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'batchIndex', $pb.PbFieldType.O3, defaultOrMaker: -1)
    ..p<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ackSet', $pb.PbFieldType.P6)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'batchSize', $pb.PbFieldType.O3)
  ;

  MessageIdData._() : super();
  factory MessageIdData({
    $fixnum.Int64? ledgerId,
    $fixnum.Int64? entryId,
    $core.int? partition,
    $core.int? batchIndex,
    $core.Iterable<$fixnum.Int64>? ackSet,
    $core.int? batchSize,
  }) {
    final _result = create();
    if (ledgerId != null) {
      _result.ledgerId = ledgerId;
    }
    if (entryId != null) {
      _result.entryId = entryId;
    }
    if (partition != null) {
      _result.partition = partition;
    }
    if (batchIndex != null) {
      _result.batchIndex = batchIndex;
    }
    if (ackSet != null) {
      _result.ackSet.addAll(ackSet);
    }
    if (batchSize != null) {
      _result.batchSize = batchSize;
    }
    return _result;
  }
  factory MessageIdData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageIdData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageIdData clone() => MessageIdData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageIdData copyWith(void Function(MessageIdData) updates) => super.copyWith((message) => updates(message as MessageIdData)) as MessageIdData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageIdData create() => MessageIdData._();
  MessageIdData createEmptyInstance() => create();
  static $pb.PbList<MessageIdData> createRepeated() => $pb.PbList<MessageIdData>();
  @$core.pragma('dart2js:noInline')
  static MessageIdData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageIdData>(create);
  static MessageIdData? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get ledgerId => $_getI64(0);
  @$pb.TagNumber(1)
  set ledgerId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLedgerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLedgerId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get entryId => $_getI64(1);
  @$pb.TagNumber(2)
  set entryId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEntryId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEntryId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get partition => $_getI(2, -1);
  @$pb.TagNumber(3)
  set partition($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPartition() => $_has(2);
  @$pb.TagNumber(3)
  void clearPartition() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get batchIndex => $_getI(3, -1);
  @$pb.TagNumber(4)
  set batchIndex($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBatchIndex() => $_has(3);
  @$pb.TagNumber(4)
  void clearBatchIndex() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$fixnum.Int64> get ackSet => $_getList(4);

  @$pb.TagNumber(6)
  $core.int get batchSize => $_getIZ(5);
  @$pb.TagNumber(6)
  set batchSize($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBatchSize() => $_has(5);
  @$pb.TagNumber(6)
  void clearBatchSize() => clearField(6);
}

class KeyValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeyValue', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value')
  ;

  KeyValue._() : super();
  factory KeyValue({
    $core.String? key,
    $core.String? value,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory KeyValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyValue clone() => KeyValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyValue copyWith(void Function(KeyValue) updates) => super.copyWith((message) => updates(message as KeyValue)) as KeyValue; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyValue create() => KeyValue._();
  KeyValue createEmptyInstance() => create();
  static $pb.PbList<KeyValue> createRepeated() => $pb.PbList<KeyValue>();
  @$core.pragma('dart2js:noInline')
  static KeyValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyValue>(create);
  static KeyValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

class KeyLongValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeyLongValue', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
  ;

  KeyLongValue._() : super();
  factory KeyLongValue({
    $core.String? key,
    $fixnum.Int64? value,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory KeyLongValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyLongValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyLongValue clone() => KeyLongValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyLongValue copyWith(void Function(KeyLongValue) updates) => super.copyWith((message) => updates(message as KeyLongValue)) as KeyLongValue; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyLongValue create() => KeyLongValue._();
  KeyLongValue createEmptyInstance() => create();
  static $pb.PbList<KeyLongValue> createRepeated() => $pb.PbList<KeyLongValue>();
  @$core.pragma('dart2js:noInline')
  static KeyLongValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyLongValue>(create);
  static KeyLongValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get value => $_getI64(1);
  @$pb.TagNumber(2)
  set value($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

class IntRange extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IntRange', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'start', $pb.PbFieldType.Q3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'end', $pb.PbFieldType.Q3)
  ;

  IntRange._() : super();
  factory IntRange({
    $core.int? start,
    $core.int? end,
  }) {
    final _result = create();
    if (start != null) {
      _result.start = start;
    }
    if (end != null) {
      _result.end = end;
    }
    return _result;
  }
  factory IntRange.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IntRange.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IntRange clone() => IntRange()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IntRange copyWith(void Function(IntRange) updates) => super.copyWith((message) => updates(message as IntRange)) as IntRange; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IntRange create() => IntRange._();
  IntRange createEmptyInstance() => create();
  static $pb.PbList<IntRange> createRepeated() => $pb.PbList<IntRange>();
  @$core.pragma('dart2js:noInline')
  static IntRange getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IntRange>(create);
  static IntRange? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get start => $_getIZ(0);
  @$pb.TagNumber(1)
  set start($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStart() => $_has(0);
  @$pb.TagNumber(1)
  void clearStart() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get end => $_getIZ(1);
  @$pb.TagNumber(2)
  set end($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnd() => clearField(2);
}

class EncryptionKeys extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EncryptionKeys', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.QY)
    ..pc<KeyValue>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metadata', $pb.PbFieldType.PM, subBuilder: KeyValue.create)
  ;

  EncryptionKeys._() : super();
  factory EncryptionKeys({
    $core.String? key,
    $core.List<$core.int>? value,
    $core.Iterable<KeyValue>? metadata,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (value != null) {
      _result.value = value;
    }
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    return _result;
  }
  factory EncryptionKeys.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptionKeys.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptionKeys clone() => EncryptionKeys()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptionKeys copyWith(void Function(EncryptionKeys) updates) => super.copyWith((message) => updates(message as EncryptionKeys)) as EncryptionKeys; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EncryptionKeys create() => EncryptionKeys._();
  EncryptionKeys createEmptyInstance() => create();
  static $pb.PbList<EncryptionKeys> createRepeated() => $pb.PbList<EncryptionKeys>();
  @$core.pragma('dart2js:noInline')
  static EncryptionKeys getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptionKeys>(create);
  static EncryptionKeys? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<KeyValue> get metadata => $_getList(2);
}

class MessageMetadata extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageMetadata', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'producerName')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sequenceId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publishTime', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<KeyValue>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'properties', $pb.PbFieldType.PM, subBuilder: KeyValue.create)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'replicatedFrom')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'partitionKey')
    ..pPS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'replicateTo')
    ..e<CompressionType>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'compression', $pb.PbFieldType.OE, defaultOrMaker: CompressionType.NONE, valueOf: CompressionType.valueOf, enumValues: CompressionType.values)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uncompressedSize', $pb.PbFieldType.OU3)
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numMessagesInBatch', $pb.PbFieldType.O3, defaultOrMaker: 1)
    ..a<$fixnum.Int64>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventTime', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<EncryptionKeys>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'encryptionKeys', $pb.PbFieldType.PM, subBuilder: EncryptionKeys.create)
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'encryptionAlgo')
    ..a<$core.List<$core.int>>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'encryptionParam', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schemaVersion', $pb.PbFieldType.OY)
    ..aOB(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'partitionKeyB64Encoded')
    ..a<$core.List<$core.int>>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderingKey', $pb.PbFieldType.OY)
    ..aInt64(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deliverAtTime')
    ..a<$core.int>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'markerType', $pb.PbFieldType.O3)
    ..a<$fixnum.Int64>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidLeastBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidMostBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'highestSequenceId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nullValue')
    ..aOS(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..a<$core.int>(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numChunksFromMsg', $pb.PbFieldType.O3)
    ..a<$core.int>(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalChunkMsgSize', $pb.PbFieldType.O3)
    ..a<$core.int>(29, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chunkId', $pb.PbFieldType.O3)
    ..aOB(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nullPartitionKey')
  ;

  MessageMetadata._() : super();
  factory MessageMetadata({
    $core.String? producerName,
    $fixnum.Int64? sequenceId,
    $fixnum.Int64? publishTime,
    $core.Iterable<KeyValue>? properties,
    $core.String? replicatedFrom,
    $core.String? partitionKey,
    $core.Iterable<$core.String>? replicateTo,
    CompressionType? compression,
    $core.int? uncompressedSize,
    $core.int? numMessagesInBatch,
    $fixnum.Int64? eventTime,
    $core.Iterable<EncryptionKeys>? encryptionKeys,
    $core.String? encryptionAlgo,
    $core.List<$core.int>? encryptionParam,
    $core.List<$core.int>? schemaVersion,
    $core.bool? partitionKeyB64Encoded,
    $core.List<$core.int>? orderingKey,
    $fixnum.Int64? deliverAtTime,
    $core.int? markerType,
    $fixnum.Int64? txnidLeastBits,
    $fixnum.Int64? txnidMostBits,
    $fixnum.Int64? highestSequenceId,
    $core.bool? nullValue,
    $core.String? uuid,
    $core.int? numChunksFromMsg,
    $core.int? totalChunkMsgSize,
    $core.int? chunkId,
    $core.bool? nullPartitionKey,
  }) {
    final _result = create();
    if (producerName != null) {
      _result.producerName = producerName;
    }
    if (sequenceId != null) {
      _result.sequenceId = sequenceId;
    }
    if (publishTime != null) {
      _result.publishTime = publishTime;
    }
    if (properties != null) {
      _result.properties.addAll(properties);
    }
    if (replicatedFrom != null) {
      _result.replicatedFrom = replicatedFrom;
    }
    if (partitionKey != null) {
      _result.partitionKey = partitionKey;
    }
    if (replicateTo != null) {
      _result.replicateTo.addAll(replicateTo);
    }
    if (compression != null) {
      _result.compression = compression;
    }
    if (uncompressedSize != null) {
      _result.uncompressedSize = uncompressedSize;
    }
    if (numMessagesInBatch != null) {
      _result.numMessagesInBatch = numMessagesInBatch;
    }
    if (eventTime != null) {
      _result.eventTime = eventTime;
    }
    if (encryptionKeys != null) {
      _result.encryptionKeys.addAll(encryptionKeys);
    }
    if (encryptionAlgo != null) {
      _result.encryptionAlgo = encryptionAlgo;
    }
    if (encryptionParam != null) {
      _result.encryptionParam = encryptionParam;
    }
    if (schemaVersion != null) {
      _result.schemaVersion = schemaVersion;
    }
    if (partitionKeyB64Encoded != null) {
      _result.partitionKeyB64Encoded = partitionKeyB64Encoded;
    }
    if (orderingKey != null) {
      _result.orderingKey = orderingKey;
    }
    if (deliverAtTime != null) {
      _result.deliverAtTime = deliverAtTime;
    }
    if (markerType != null) {
      _result.markerType = markerType;
    }
    if (txnidLeastBits != null) {
      _result.txnidLeastBits = txnidLeastBits;
    }
    if (txnidMostBits != null) {
      _result.txnidMostBits = txnidMostBits;
    }
    if (highestSequenceId != null) {
      _result.highestSequenceId = highestSequenceId;
    }
    if (nullValue != null) {
      _result.nullValue = nullValue;
    }
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (numChunksFromMsg != null) {
      _result.numChunksFromMsg = numChunksFromMsg;
    }
    if (totalChunkMsgSize != null) {
      _result.totalChunkMsgSize = totalChunkMsgSize;
    }
    if (chunkId != null) {
      _result.chunkId = chunkId;
    }
    if (nullPartitionKey != null) {
      _result.nullPartitionKey = nullPartitionKey;
    }
    return _result;
  }
  factory MessageMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageMetadata clone() => MessageMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageMetadata copyWith(void Function(MessageMetadata) updates) => super.copyWith((message) => updates(message as MessageMetadata)) as MessageMetadata; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageMetadata create() => MessageMetadata._();
  MessageMetadata createEmptyInstance() => create();
  static $pb.PbList<MessageMetadata> createRepeated() => $pb.PbList<MessageMetadata>();
  @$core.pragma('dart2js:noInline')
  static MessageMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageMetadata>(create);
  static MessageMetadata? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get producerName => $_getSZ(0);
  @$pb.TagNumber(1)
  set producerName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProducerName() => $_has(0);
  @$pb.TagNumber(1)
  void clearProducerName() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get sequenceId => $_getI64(1);
  @$pb.TagNumber(2)
  set sequenceId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSequenceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSequenceId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get publishTime => $_getI64(2);
  @$pb.TagNumber(3)
  set publishTime($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPublishTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearPublishTime() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<KeyValue> get properties => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get replicatedFrom => $_getSZ(4);
  @$pb.TagNumber(5)
  set replicatedFrom($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasReplicatedFrom() => $_has(4);
  @$pb.TagNumber(5)
  void clearReplicatedFrom() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get partitionKey => $_getSZ(5);
  @$pb.TagNumber(6)
  set partitionKey($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPartitionKey() => $_has(5);
  @$pb.TagNumber(6)
  void clearPartitionKey() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.String> get replicateTo => $_getList(6);

  @$pb.TagNumber(8)
  CompressionType get compression => $_getN(7);
  @$pb.TagNumber(8)
  set compression(CompressionType v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasCompression() => $_has(7);
  @$pb.TagNumber(8)
  void clearCompression() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get uncompressedSize => $_getIZ(8);
  @$pb.TagNumber(9)
  set uncompressedSize($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasUncompressedSize() => $_has(8);
  @$pb.TagNumber(9)
  void clearUncompressedSize() => clearField(9);

  @$pb.TagNumber(11)
  $core.int get numMessagesInBatch => $_getI(9, 1);
  @$pb.TagNumber(11)
  set numMessagesInBatch($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasNumMessagesInBatch() => $_has(9);
  @$pb.TagNumber(11)
  void clearNumMessagesInBatch() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get eventTime => $_getI64(10);
  @$pb.TagNumber(12)
  set eventTime($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasEventTime() => $_has(10);
  @$pb.TagNumber(12)
  void clearEventTime() => clearField(12);

  @$pb.TagNumber(13)
  $core.List<EncryptionKeys> get encryptionKeys => $_getList(11);

  @$pb.TagNumber(14)
  $core.String get encryptionAlgo => $_getSZ(12);
  @$pb.TagNumber(14)
  set encryptionAlgo($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(14)
  $core.bool hasEncryptionAlgo() => $_has(12);
  @$pb.TagNumber(14)
  void clearEncryptionAlgo() => clearField(14);

  @$pb.TagNumber(15)
  $core.List<$core.int> get encryptionParam => $_getN(13);
  @$pb.TagNumber(15)
  set encryptionParam($core.List<$core.int> v) { $_setBytes(13, v); }
  @$pb.TagNumber(15)
  $core.bool hasEncryptionParam() => $_has(13);
  @$pb.TagNumber(15)
  void clearEncryptionParam() => clearField(15);

  @$pb.TagNumber(16)
  $core.List<$core.int> get schemaVersion => $_getN(14);
  @$pb.TagNumber(16)
  set schemaVersion($core.List<$core.int> v) { $_setBytes(14, v); }
  @$pb.TagNumber(16)
  $core.bool hasSchemaVersion() => $_has(14);
  @$pb.TagNumber(16)
  void clearSchemaVersion() => clearField(16);

  @$pb.TagNumber(17)
  $core.bool get partitionKeyB64Encoded => $_getBF(15);
  @$pb.TagNumber(17)
  set partitionKeyB64Encoded($core.bool v) { $_setBool(15, v); }
  @$pb.TagNumber(17)
  $core.bool hasPartitionKeyB64Encoded() => $_has(15);
  @$pb.TagNumber(17)
  void clearPartitionKeyB64Encoded() => clearField(17);

  @$pb.TagNumber(18)
  $core.List<$core.int> get orderingKey => $_getN(16);
  @$pb.TagNumber(18)
  set orderingKey($core.List<$core.int> v) { $_setBytes(16, v); }
  @$pb.TagNumber(18)
  $core.bool hasOrderingKey() => $_has(16);
  @$pb.TagNumber(18)
  void clearOrderingKey() => clearField(18);

  @$pb.TagNumber(19)
  $fixnum.Int64 get deliverAtTime => $_getI64(17);
  @$pb.TagNumber(19)
  set deliverAtTime($fixnum.Int64 v) { $_setInt64(17, v); }
  @$pb.TagNumber(19)
  $core.bool hasDeliverAtTime() => $_has(17);
  @$pb.TagNumber(19)
  void clearDeliverAtTime() => clearField(19);

  @$pb.TagNumber(20)
  $core.int get markerType => $_getIZ(18);
  @$pb.TagNumber(20)
  set markerType($core.int v) { $_setSignedInt32(18, v); }
  @$pb.TagNumber(20)
  $core.bool hasMarkerType() => $_has(18);
  @$pb.TagNumber(20)
  void clearMarkerType() => clearField(20);

  @$pb.TagNumber(22)
  $fixnum.Int64 get txnidLeastBits => $_getI64(19);
  @$pb.TagNumber(22)
  set txnidLeastBits($fixnum.Int64 v) { $_setInt64(19, v); }
  @$pb.TagNumber(22)
  $core.bool hasTxnidLeastBits() => $_has(19);
  @$pb.TagNumber(22)
  void clearTxnidLeastBits() => clearField(22);

  @$pb.TagNumber(23)
  $fixnum.Int64 get txnidMostBits => $_getI64(20);
  @$pb.TagNumber(23)
  set txnidMostBits($fixnum.Int64 v) { $_setInt64(20, v); }
  @$pb.TagNumber(23)
  $core.bool hasTxnidMostBits() => $_has(20);
  @$pb.TagNumber(23)
  void clearTxnidMostBits() => clearField(23);

  @$pb.TagNumber(24)
  $fixnum.Int64 get highestSequenceId => $_getI64(21);
  @$pb.TagNumber(24)
  set highestSequenceId($fixnum.Int64 v) { $_setInt64(21, v); }
  @$pb.TagNumber(24)
  $core.bool hasHighestSequenceId() => $_has(21);
  @$pb.TagNumber(24)
  void clearHighestSequenceId() => clearField(24);

  @$pb.TagNumber(25)
  $core.bool get nullValue => $_getBF(22);
  @$pb.TagNumber(25)
  set nullValue($core.bool v) { $_setBool(22, v); }
  @$pb.TagNumber(25)
  $core.bool hasNullValue() => $_has(22);
  @$pb.TagNumber(25)
  void clearNullValue() => clearField(25);

  @$pb.TagNumber(26)
  $core.String get uuid => $_getSZ(23);
  @$pb.TagNumber(26)
  set uuid($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(26)
  $core.bool hasUuid() => $_has(23);
  @$pb.TagNumber(26)
  void clearUuid() => clearField(26);

  @$pb.TagNumber(27)
  $core.int get numChunksFromMsg => $_getIZ(24);
  @$pb.TagNumber(27)
  set numChunksFromMsg($core.int v) { $_setSignedInt32(24, v); }
  @$pb.TagNumber(27)
  $core.bool hasNumChunksFromMsg() => $_has(24);
  @$pb.TagNumber(27)
  void clearNumChunksFromMsg() => clearField(27);

  @$pb.TagNumber(28)
  $core.int get totalChunkMsgSize => $_getIZ(25);
  @$pb.TagNumber(28)
  set totalChunkMsgSize($core.int v) { $_setSignedInt32(25, v); }
  @$pb.TagNumber(28)
  $core.bool hasTotalChunkMsgSize() => $_has(25);
  @$pb.TagNumber(28)
  void clearTotalChunkMsgSize() => clearField(28);

  @$pb.TagNumber(29)
  $core.int get chunkId => $_getIZ(26);
  @$pb.TagNumber(29)
  set chunkId($core.int v) { $_setSignedInt32(26, v); }
  @$pb.TagNumber(29)
  $core.bool hasChunkId() => $_has(26);
  @$pb.TagNumber(29)
  void clearChunkId() => clearField(29);

  @$pb.TagNumber(30)
  $core.bool get nullPartitionKey => $_getBF(27);
  @$pb.TagNumber(30)
  set nullPartitionKey($core.bool v) { $_setBool(27, v); }
  @$pb.TagNumber(30)
  $core.bool hasNullPartitionKey() => $_has(27);
  @$pb.TagNumber(30)
  void clearNullPartitionKey() => clearField(30);
}

class SingleMessageMetadata extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SingleMessageMetadata', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..pc<KeyValue>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'properties', $pb.PbFieldType.PM, subBuilder: KeyValue.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'partitionKey')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payloadSize', $pb.PbFieldType.Q3)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'compactedOut')
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventTime', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'partitionKeyB64Encoded')
    ..a<$core.List<$core.int>>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderingKey', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sequenceId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nullValue')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nullPartitionKey')
  ;

  SingleMessageMetadata._() : super();
  factory SingleMessageMetadata({
    $core.Iterable<KeyValue>? properties,
    $core.String? partitionKey,
    $core.int? payloadSize,
    $core.bool? compactedOut,
    $fixnum.Int64? eventTime,
    $core.bool? partitionKeyB64Encoded,
    $core.List<$core.int>? orderingKey,
    $fixnum.Int64? sequenceId,
    $core.bool? nullValue,
    $core.bool? nullPartitionKey,
  }) {
    final _result = create();
    if (properties != null) {
      _result.properties.addAll(properties);
    }
    if (partitionKey != null) {
      _result.partitionKey = partitionKey;
    }
    if (payloadSize != null) {
      _result.payloadSize = payloadSize;
    }
    if (compactedOut != null) {
      _result.compactedOut = compactedOut;
    }
    if (eventTime != null) {
      _result.eventTime = eventTime;
    }
    if (partitionKeyB64Encoded != null) {
      _result.partitionKeyB64Encoded = partitionKeyB64Encoded;
    }
    if (orderingKey != null) {
      _result.orderingKey = orderingKey;
    }
    if (sequenceId != null) {
      _result.sequenceId = sequenceId;
    }
    if (nullValue != null) {
      _result.nullValue = nullValue;
    }
    if (nullPartitionKey != null) {
      _result.nullPartitionKey = nullPartitionKey;
    }
    return _result;
  }
  factory SingleMessageMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SingleMessageMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SingleMessageMetadata clone() => SingleMessageMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SingleMessageMetadata copyWith(void Function(SingleMessageMetadata) updates) => super.copyWith((message) => updates(message as SingleMessageMetadata)) as SingleMessageMetadata; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SingleMessageMetadata create() => SingleMessageMetadata._();
  SingleMessageMetadata createEmptyInstance() => create();
  static $pb.PbList<SingleMessageMetadata> createRepeated() => $pb.PbList<SingleMessageMetadata>();
  @$core.pragma('dart2js:noInline')
  static SingleMessageMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SingleMessageMetadata>(create);
  static SingleMessageMetadata? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<KeyValue> get properties => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get partitionKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set partitionKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPartitionKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearPartitionKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get payloadSize => $_getIZ(2);
  @$pb.TagNumber(3)
  set payloadSize($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPayloadSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearPayloadSize() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get compactedOut => $_getBF(3);
  @$pb.TagNumber(4)
  set compactedOut($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCompactedOut() => $_has(3);
  @$pb.TagNumber(4)
  void clearCompactedOut() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get eventTime => $_getI64(4);
  @$pb.TagNumber(5)
  set eventTime($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEventTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearEventTime() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get partitionKeyB64Encoded => $_getBF(5);
  @$pb.TagNumber(6)
  set partitionKeyB64Encoded($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPartitionKeyB64Encoded() => $_has(5);
  @$pb.TagNumber(6)
  void clearPartitionKeyB64Encoded() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get orderingKey => $_getN(6);
  @$pb.TagNumber(7)
  set orderingKey($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasOrderingKey() => $_has(6);
  @$pb.TagNumber(7)
  void clearOrderingKey() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get sequenceId => $_getI64(7);
  @$pb.TagNumber(8)
  set sequenceId($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSequenceId() => $_has(7);
  @$pb.TagNumber(8)
  void clearSequenceId() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get nullValue => $_getBF(8);
  @$pb.TagNumber(9)
  set nullValue($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasNullValue() => $_has(8);
  @$pb.TagNumber(9)
  void clearNullValue() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get nullPartitionKey => $_getBF(9);
  @$pb.TagNumber(10)
  set nullPartitionKey($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasNullPartitionKey() => $_has(9);
  @$pb.TagNumber(10)
  void clearNullPartitionKey() => clearField(10);
}

class BrokerEntryMetadata extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BrokerEntryMetadata', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'brokerTimestamp', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'index', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  BrokerEntryMetadata._() : super();
  factory BrokerEntryMetadata({
    $fixnum.Int64? brokerTimestamp,
    $fixnum.Int64? index,
  }) {
    final _result = create();
    if (brokerTimestamp != null) {
      _result.brokerTimestamp = brokerTimestamp;
    }
    if (index != null) {
      _result.index = index;
    }
    return _result;
  }
  factory BrokerEntryMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BrokerEntryMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BrokerEntryMetadata clone() => BrokerEntryMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BrokerEntryMetadata copyWith(void Function(BrokerEntryMetadata) updates) => super.copyWith((message) => updates(message as BrokerEntryMetadata)) as BrokerEntryMetadata; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BrokerEntryMetadata create() => BrokerEntryMetadata._();
  BrokerEntryMetadata createEmptyInstance() => create();
  static $pb.PbList<BrokerEntryMetadata> createRepeated() => $pb.PbList<BrokerEntryMetadata>();
  @$core.pragma('dart2js:noInline')
  static BrokerEntryMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BrokerEntryMetadata>(create);
  static BrokerEntryMetadata? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get brokerTimestamp => $_getI64(0);
  @$pb.TagNumber(1)
  set brokerTimestamp($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBrokerTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearBrokerTimestamp() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get index => $_getI64(1);
  @$pb.TagNumber(2)
  set index($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndex() => clearField(2);
}

class CommandConnect extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandConnect', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientVersion')
    ..e<AuthMethod>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authMethod', $pb.PbFieldType.OE, defaultOrMaker: AuthMethod.AuthMethodNone, valueOf: AuthMethod.valueOf, enumValues: AuthMethod.values)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authData', $pb.PbFieldType.OY)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'protocolVersion', $pb.PbFieldType.O3)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authMethodName')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'proxyToBrokerUrl')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'originalPrincipal')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'originalAuthData')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'originalAuthMethod')
    ..aOM<FeatureFlags>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'featureFlags', subBuilder: FeatureFlags.create)
  ;

  CommandConnect._() : super();
  factory CommandConnect({
    $core.String? clientVersion,
    AuthMethod? authMethod,
    $core.List<$core.int>? authData,
    $core.int? protocolVersion,
    $core.String? authMethodName,
    $core.String? proxyToBrokerUrl,
    $core.String? originalPrincipal,
    $core.String? originalAuthData,
    $core.String? originalAuthMethod,
    FeatureFlags? featureFlags,
  }) {
    final _result = create();
    if (clientVersion != null) {
      _result.clientVersion = clientVersion;
    }
    if (authMethod != null) {
      _result.authMethod = authMethod;
    }
    if (authData != null) {
      _result.authData = authData;
    }
    if (protocolVersion != null) {
      _result.protocolVersion = protocolVersion;
    }
    if (authMethodName != null) {
      _result.authMethodName = authMethodName;
    }
    if (proxyToBrokerUrl != null) {
      _result.proxyToBrokerUrl = proxyToBrokerUrl;
    }
    if (originalPrincipal != null) {
      _result.originalPrincipal = originalPrincipal;
    }
    if (originalAuthData != null) {
      _result.originalAuthData = originalAuthData;
    }
    if (originalAuthMethod != null) {
      _result.originalAuthMethod = originalAuthMethod;
    }
    if (featureFlags != null) {
      _result.featureFlags = featureFlags;
    }
    return _result;
  }
  factory CommandConnect.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandConnect.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandConnect clone() => CommandConnect()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandConnect copyWith(void Function(CommandConnect) updates) => super.copyWith((message) => updates(message as CommandConnect)) as CommandConnect; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandConnect create() => CommandConnect._();
  CommandConnect createEmptyInstance() => create();
  static $pb.PbList<CommandConnect> createRepeated() => $pb.PbList<CommandConnect>();
  @$core.pragma('dart2js:noInline')
  static CommandConnect getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandConnect>(create);
  static CommandConnect? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get clientVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set clientVersion($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClientVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientVersion() => clearField(1);

  @$pb.TagNumber(2)
  AuthMethod get authMethod => $_getN(1);
  @$pb.TagNumber(2)
  set authMethod(AuthMethod v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthMethod() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthMethod() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get authData => $_getN(2);
  @$pb.TagNumber(3)
  set authData($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuthData() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthData() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get protocolVersion => $_getIZ(3);
  @$pb.TagNumber(4)
  set protocolVersion($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasProtocolVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearProtocolVersion() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get authMethodName => $_getSZ(4);
  @$pb.TagNumber(5)
  set authMethodName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAuthMethodName() => $_has(4);
  @$pb.TagNumber(5)
  void clearAuthMethodName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get proxyToBrokerUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set proxyToBrokerUrl($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasProxyToBrokerUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearProxyToBrokerUrl() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get originalPrincipal => $_getSZ(6);
  @$pb.TagNumber(7)
  set originalPrincipal($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasOriginalPrincipal() => $_has(6);
  @$pb.TagNumber(7)
  void clearOriginalPrincipal() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get originalAuthData => $_getSZ(7);
  @$pb.TagNumber(8)
  set originalAuthData($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasOriginalAuthData() => $_has(7);
  @$pb.TagNumber(8)
  void clearOriginalAuthData() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get originalAuthMethod => $_getSZ(8);
  @$pb.TagNumber(9)
  set originalAuthMethod($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasOriginalAuthMethod() => $_has(8);
  @$pb.TagNumber(9)
  void clearOriginalAuthMethod() => clearField(9);

  @$pb.TagNumber(10)
  FeatureFlags get featureFlags => $_getN(9);
  @$pb.TagNumber(10)
  set featureFlags(FeatureFlags v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasFeatureFlags() => $_has(9);
  @$pb.TagNumber(10)
  void clearFeatureFlags() => clearField(10);
  @$pb.TagNumber(10)
  FeatureFlags ensureFeatureFlags() => $_ensure(9);
}

class FeatureFlags extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FeatureFlags', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supportsAuthRefresh')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supportsBrokerEntryMetadata')
    ..hasRequiredFields = false
  ;

  FeatureFlags._() : super();
  factory FeatureFlags({
    $core.bool? supportsAuthRefresh,
    $core.bool? supportsBrokerEntryMetadata,
  }) {
    final _result = create();
    if (supportsAuthRefresh != null) {
      _result.supportsAuthRefresh = supportsAuthRefresh;
    }
    if (supportsBrokerEntryMetadata != null) {
      _result.supportsBrokerEntryMetadata = supportsBrokerEntryMetadata;
    }
    return _result;
  }
  factory FeatureFlags.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeatureFlags.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FeatureFlags clone() => FeatureFlags()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FeatureFlags copyWith(void Function(FeatureFlags) updates) => super.copyWith((message) => updates(message as FeatureFlags)) as FeatureFlags; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeatureFlags create() => FeatureFlags._();
  FeatureFlags createEmptyInstance() => create();
  static $pb.PbList<FeatureFlags> createRepeated() => $pb.PbList<FeatureFlags>();
  @$core.pragma('dart2js:noInline')
  static FeatureFlags getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeatureFlags>(create);
  static FeatureFlags? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get supportsAuthRefresh => $_getBF(0);
  @$pb.TagNumber(1)
  set supportsAuthRefresh($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSupportsAuthRefresh() => $_has(0);
  @$pb.TagNumber(1)
  void clearSupportsAuthRefresh() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get supportsBrokerEntryMetadata => $_getBF(1);
  @$pb.TagNumber(2)
  set supportsBrokerEntryMetadata($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSupportsBrokerEntryMetadata() => $_has(1);
  @$pb.TagNumber(2)
  void clearSupportsBrokerEntryMetadata() => clearField(2);
}

class CommandConnected extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandConnected', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverVersion')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'protocolVersion', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxMessageSize', $pb.PbFieldType.O3)
  ;

  CommandConnected._() : super();
  factory CommandConnected({
    $core.String? serverVersion,
    $core.int? protocolVersion,
    $core.int? maxMessageSize,
  }) {
    final _result = create();
    if (serverVersion != null) {
      _result.serverVersion = serverVersion;
    }
    if (protocolVersion != null) {
      _result.protocolVersion = protocolVersion;
    }
    if (maxMessageSize != null) {
      _result.maxMessageSize = maxMessageSize;
    }
    return _result;
  }
  factory CommandConnected.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandConnected.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandConnected clone() => CommandConnected()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandConnected copyWith(void Function(CommandConnected) updates) => super.copyWith((message) => updates(message as CommandConnected)) as CommandConnected; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandConnected create() => CommandConnected._();
  CommandConnected createEmptyInstance() => create();
  static $pb.PbList<CommandConnected> createRepeated() => $pb.PbList<CommandConnected>();
  @$core.pragma('dart2js:noInline')
  static CommandConnected getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandConnected>(create);
  static CommandConnected? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get serverVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set serverVersion($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasServerVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearServerVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get protocolVersion => $_getIZ(1);
  @$pb.TagNumber(2)
  set protocolVersion($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProtocolVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearProtocolVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get maxMessageSize => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxMessageSize($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMaxMessageSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxMessageSize() => clearField(3);
}

class CommandAuthResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandAuthResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientVersion')
    ..aOM<AuthData>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'response', subBuilder: AuthData.create)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'protocolVersion', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  CommandAuthResponse._() : super();
  factory CommandAuthResponse({
    $core.String? clientVersion,
    AuthData? response,
    $core.int? protocolVersion,
  }) {
    final _result = create();
    if (clientVersion != null) {
      _result.clientVersion = clientVersion;
    }
    if (response != null) {
      _result.response = response;
    }
    if (protocolVersion != null) {
      _result.protocolVersion = protocolVersion;
    }
    return _result;
  }
  factory CommandAuthResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandAuthResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandAuthResponse clone() => CommandAuthResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandAuthResponse copyWith(void Function(CommandAuthResponse) updates) => super.copyWith((message) => updates(message as CommandAuthResponse)) as CommandAuthResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandAuthResponse create() => CommandAuthResponse._();
  CommandAuthResponse createEmptyInstance() => create();
  static $pb.PbList<CommandAuthResponse> createRepeated() => $pb.PbList<CommandAuthResponse>();
  @$core.pragma('dart2js:noInline')
  static CommandAuthResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandAuthResponse>(create);
  static CommandAuthResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get clientVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set clientVersion($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClientVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientVersion() => clearField(1);

  @$pb.TagNumber(2)
  AuthData get response => $_getN(1);
  @$pb.TagNumber(2)
  set response(AuthData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponse() => clearField(2);
  @$pb.TagNumber(2)
  AuthData ensureResponse() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get protocolVersion => $_getIZ(2);
  @$pb.TagNumber(3)
  set protocolVersion($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProtocolVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearProtocolVersion() => clearField(3);
}

class CommandAuthChallenge extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandAuthChallenge', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverVersion')
    ..aOM<AuthData>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'challenge', subBuilder: AuthData.create)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'protocolVersion', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  CommandAuthChallenge._() : super();
  factory CommandAuthChallenge({
    $core.String? serverVersion,
    AuthData? challenge,
    $core.int? protocolVersion,
  }) {
    final _result = create();
    if (serverVersion != null) {
      _result.serverVersion = serverVersion;
    }
    if (challenge != null) {
      _result.challenge = challenge;
    }
    if (protocolVersion != null) {
      _result.protocolVersion = protocolVersion;
    }
    return _result;
  }
  factory CommandAuthChallenge.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandAuthChallenge.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandAuthChallenge clone() => CommandAuthChallenge()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandAuthChallenge copyWith(void Function(CommandAuthChallenge) updates) => super.copyWith((message) => updates(message as CommandAuthChallenge)) as CommandAuthChallenge; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandAuthChallenge create() => CommandAuthChallenge._();
  CommandAuthChallenge createEmptyInstance() => create();
  static $pb.PbList<CommandAuthChallenge> createRepeated() => $pb.PbList<CommandAuthChallenge>();
  @$core.pragma('dart2js:noInline')
  static CommandAuthChallenge getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandAuthChallenge>(create);
  static CommandAuthChallenge? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get serverVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set serverVersion($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasServerVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearServerVersion() => clearField(1);

  @$pb.TagNumber(2)
  AuthData get challenge => $_getN(1);
  @$pb.TagNumber(2)
  set challenge(AuthData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasChallenge() => $_has(1);
  @$pb.TagNumber(2)
  void clearChallenge() => clearField(2);
  @$pb.TagNumber(2)
  AuthData ensureChallenge() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get protocolVersion => $_getIZ(2);
  @$pb.TagNumber(3)
  set protocolVersion($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProtocolVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearProtocolVersion() => clearField(3);
}

class AuthData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authMethodName')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authData', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  AuthData._() : super();
  factory AuthData({
    $core.String? authMethodName,
    $core.List<$core.int>? authData,
  }) {
    final _result = create();
    if (authMethodName != null) {
      _result.authMethodName = authMethodName;
    }
    if (authData != null) {
      _result.authData = authData;
    }
    return _result;
  }
  factory AuthData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthData clone() => AuthData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthData copyWith(void Function(AuthData) updates) => super.copyWith((message) => updates(message as AuthData)) as AuthData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthData create() => AuthData._();
  AuthData createEmptyInstance() => create();
  static $pb.PbList<AuthData> createRepeated() => $pb.PbList<AuthData>();
  @$core.pragma('dart2js:noInline')
  static AuthData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthData>(create);
  static AuthData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get authMethodName => $_getSZ(0);
  @$pb.TagNumber(1)
  set authMethodName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthMethodName() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthMethodName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get authData => $_getN(1);
  @$pb.TagNumber(2)
  set authData($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthData() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthData() => clearField(2);
}

class KeySharedMeta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeySharedMeta', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..e<KeySharedMode>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keySharedMode', $pb.PbFieldType.QE, protoName: 'keySharedMode', defaultOrMaker: KeySharedMode.AUTO_SPLIT, valueOf: KeySharedMode.valueOf, enumValues: KeySharedMode.values)
    ..pc<IntRange>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hashRanges', $pb.PbFieldType.PM, protoName: 'hashRanges', subBuilder: IntRange.create)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'allowOutOfOrderDelivery', protoName: 'allowOutOfOrderDelivery')
  ;

  KeySharedMeta._() : super();
  factory KeySharedMeta({
    KeySharedMode? keySharedMode,
    $core.Iterable<IntRange>? hashRanges,
    $core.bool? allowOutOfOrderDelivery,
  }) {
    final _result = create();
    if (keySharedMode != null) {
      _result.keySharedMode = keySharedMode;
    }
    if (hashRanges != null) {
      _result.hashRanges.addAll(hashRanges);
    }
    if (allowOutOfOrderDelivery != null) {
      _result.allowOutOfOrderDelivery = allowOutOfOrderDelivery;
    }
    return _result;
  }
  factory KeySharedMeta.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeySharedMeta.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeySharedMeta clone() => KeySharedMeta()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeySharedMeta copyWith(void Function(KeySharedMeta) updates) => super.copyWith((message) => updates(message as KeySharedMeta)) as KeySharedMeta; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeySharedMeta create() => KeySharedMeta._();
  KeySharedMeta createEmptyInstance() => create();
  static $pb.PbList<KeySharedMeta> createRepeated() => $pb.PbList<KeySharedMeta>();
  @$core.pragma('dart2js:noInline')
  static KeySharedMeta getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeySharedMeta>(create);
  static KeySharedMeta? _defaultInstance;

  @$pb.TagNumber(1)
  KeySharedMode get keySharedMode => $_getN(0);
  @$pb.TagNumber(1)
  set keySharedMode(KeySharedMode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeySharedMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeySharedMode() => clearField(1);

  @$pb.TagNumber(3)
  $core.List<IntRange> get hashRanges => $_getList(1);

  @$pb.TagNumber(4)
  $core.bool get allowOutOfOrderDelivery => $_getBF(2);
  @$pb.TagNumber(4)
  set allowOutOfOrderDelivery($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasAllowOutOfOrderDelivery() => $_has(2);
  @$pb.TagNumber(4)
  void clearAllowOutOfOrderDelivery() => clearField(4);
}

class CommandSubscribe extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandSubscribe', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'topic')
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscription')
    ..e<CommandSubscribe_SubType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subType', $pb.PbFieldType.QE, protoName: 'subType', defaultOrMaker: CommandSubscribe_SubType.Exclusive, valueOf: CommandSubscribe_SubType.valueOf, enumValues: CommandSubscribe_SubType.values)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'consumerId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'consumerName')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'priorityLevel', $pb.PbFieldType.O3)
    ..a<$core.bool>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'durable', $pb.PbFieldType.OB, defaultOrMaker: true)
    ..aOM<MessageIdData>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startMessageId', subBuilder: MessageIdData.create)
    ..pc<KeyValue>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metadata', $pb.PbFieldType.PM, subBuilder: KeyValue.create)
    ..aOB(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'readCompacted')
    ..aOM<Schema>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schema', subBuilder: Schema.create)
    ..e<CommandSubscribe_InitialPosition>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'initialPosition', $pb.PbFieldType.OE, protoName: 'initialPosition', defaultOrMaker: CommandSubscribe_InitialPosition.Latest, valueOf: CommandSubscribe_InitialPosition.valueOf, enumValues: CommandSubscribe_InitialPosition.values)
    ..aOB(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'replicateSubscriptionState')
    ..a<$core.bool>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'forceTopicCreation', $pb.PbFieldType.OB, defaultOrMaker: true)
    ..a<$fixnum.Int64>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startMessageRollbackDurationSec', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<KeySharedMeta>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keySharedMeta', protoName: 'keySharedMeta', subBuilder: KeySharedMeta.create)
  ;

  CommandSubscribe._() : super();
  factory CommandSubscribe({
    $core.String? topic,
    $core.String? subscription,
    CommandSubscribe_SubType? subType,
    $fixnum.Int64? consumerId,
    $fixnum.Int64? requestId,
    $core.String? consumerName,
    $core.int? priorityLevel,
    $core.bool? durable,
    MessageIdData? startMessageId,
    $core.Iterable<KeyValue>? metadata,
    $core.bool? readCompacted,
    Schema? schema,
    CommandSubscribe_InitialPosition? initialPosition,
    $core.bool? replicateSubscriptionState,
    $core.bool? forceTopicCreation,
    $fixnum.Int64? startMessageRollbackDurationSec,
    KeySharedMeta? keySharedMeta,
  }) {
    final _result = create();
    if (topic != null) {
      _result.topic = topic;
    }
    if (subscription != null) {
      _result.subscription = subscription;
    }
    if (subType != null) {
      _result.subType = subType;
    }
    if (consumerId != null) {
      _result.consumerId = consumerId;
    }
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (consumerName != null) {
      _result.consumerName = consumerName;
    }
    if (priorityLevel != null) {
      _result.priorityLevel = priorityLevel;
    }
    if (durable != null) {
      _result.durable = durable;
    }
    if (startMessageId != null) {
      _result.startMessageId = startMessageId;
    }
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    if (readCompacted != null) {
      _result.readCompacted = readCompacted;
    }
    if (schema != null) {
      _result.schema = schema;
    }
    if (initialPosition != null) {
      _result.initialPosition = initialPosition;
    }
    if (replicateSubscriptionState != null) {
      _result.replicateSubscriptionState = replicateSubscriptionState;
    }
    if (forceTopicCreation != null) {
      _result.forceTopicCreation = forceTopicCreation;
    }
    if (startMessageRollbackDurationSec != null) {
      _result.startMessageRollbackDurationSec = startMessageRollbackDurationSec;
    }
    if (keySharedMeta != null) {
      _result.keySharedMeta = keySharedMeta;
    }
    return _result;
  }
  factory CommandSubscribe.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandSubscribe.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandSubscribe clone() => CommandSubscribe()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandSubscribe copyWith(void Function(CommandSubscribe) updates) => super.copyWith((message) => updates(message as CommandSubscribe)) as CommandSubscribe; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandSubscribe create() => CommandSubscribe._();
  CommandSubscribe createEmptyInstance() => create();
  static $pb.PbList<CommandSubscribe> createRepeated() => $pb.PbList<CommandSubscribe>();
  @$core.pragma('dart2js:noInline')
  static CommandSubscribe getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandSubscribe>(create);
  static CommandSubscribe? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get topic => $_getSZ(0);
  @$pb.TagNumber(1)
  set topic($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTopic() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopic() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get subscription => $_getSZ(1);
  @$pb.TagNumber(2)
  set subscription($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubscription() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubscription() => clearField(2);

  @$pb.TagNumber(3)
  CommandSubscribe_SubType get subType => $_getN(2);
  @$pb.TagNumber(3)
  set subType(CommandSubscribe_SubType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSubType() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubType() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get consumerId => $_getI64(3);
  @$pb.TagNumber(4)
  set consumerId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasConsumerId() => $_has(3);
  @$pb.TagNumber(4)
  void clearConsumerId() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get requestId => $_getI64(4);
  @$pb.TagNumber(5)
  set requestId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRequestId() => $_has(4);
  @$pb.TagNumber(5)
  void clearRequestId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get consumerName => $_getSZ(5);
  @$pb.TagNumber(6)
  set consumerName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasConsumerName() => $_has(5);
  @$pb.TagNumber(6)
  void clearConsumerName() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get priorityLevel => $_getIZ(6);
  @$pb.TagNumber(7)
  set priorityLevel($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPriorityLevel() => $_has(6);
  @$pb.TagNumber(7)
  void clearPriorityLevel() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get durable => $_getB(7, true);
  @$pb.TagNumber(8)
  set durable($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDurable() => $_has(7);
  @$pb.TagNumber(8)
  void clearDurable() => clearField(8);

  @$pb.TagNumber(9)
  MessageIdData get startMessageId => $_getN(8);
  @$pb.TagNumber(9)
  set startMessageId(MessageIdData v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasStartMessageId() => $_has(8);
  @$pb.TagNumber(9)
  void clearStartMessageId() => clearField(9);
  @$pb.TagNumber(9)
  MessageIdData ensureStartMessageId() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.List<KeyValue> get metadata => $_getList(9);

  @$pb.TagNumber(11)
  $core.bool get readCompacted => $_getBF(10);
  @$pb.TagNumber(11)
  set readCompacted($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasReadCompacted() => $_has(10);
  @$pb.TagNumber(11)
  void clearReadCompacted() => clearField(11);

  @$pb.TagNumber(12)
  Schema get schema => $_getN(11);
  @$pb.TagNumber(12)
  set schema(Schema v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasSchema() => $_has(11);
  @$pb.TagNumber(12)
  void clearSchema() => clearField(12);
  @$pb.TagNumber(12)
  Schema ensureSchema() => $_ensure(11);

  @$pb.TagNumber(13)
  CommandSubscribe_InitialPosition get initialPosition => $_getN(12);
  @$pb.TagNumber(13)
  set initialPosition(CommandSubscribe_InitialPosition v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasInitialPosition() => $_has(12);
  @$pb.TagNumber(13)
  void clearInitialPosition() => clearField(13);

  @$pb.TagNumber(14)
  $core.bool get replicateSubscriptionState => $_getBF(13);
  @$pb.TagNumber(14)
  set replicateSubscriptionState($core.bool v) { $_setBool(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasReplicateSubscriptionState() => $_has(13);
  @$pb.TagNumber(14)
  void clearReplicateSubscriptionState() => clearField(14);

  @$pb.TagNumber(15)
  $core.bool get forceTopicCreation => $_getB(14, true);
  @$pb.TagNumber(15)
  set forceTopicCreation($core.bool v) { $_setBool(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasForceTopicCreation() => $_has(14);
  @$pb.TagNumber(15)
  void clearForceTopicCreation() => clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get startMessageRollbackDurationSec => $_getI64(15);
  @$pb.TagNumber(16)
  set startMessageRollbackDurationSec($fixnum.Int64 v) { $_setInt64(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasStartMessageRollbackDurationSec() => $_has(15);
  @$pb.TagNumber(16)
  void clearStartMessageRollbackDurationSec() => clearField(16);

  @$pb.TagNumber(17)
  KeySharedMeta get keySharedMeta => $_getN(16);
  @$pb.TagNumber(17)
  set keySharedMeta(KeySharedMeta v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasKeySharedMeta() => $_has(16);
  @$pb.TagNumber(17)
  void clearKeySharedMeta() => clearField(17);
  @$pb.TagNumber(17)
  KeySharedMeta ensureKeySharedMeta() => $_ensure(16);
}

class CommandPartitionedTopicMetadata extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandPartitionedTopicMetadata', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'topic')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'originalPrincipal')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'originalAuthData')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'originalAuthMethod')
  ;

  CommandPartitionedTopicMetadata._() : super();
  factory CommandPartitionedTopicMetadata({
    $core.String? topic,
    $fixnum.Int64? requestId,
    $core.String? originalPrincipal,
    $core.String? originalAuthData,
    $core.String? originalAuthMethod,
  }) {
    final _result = create();
    if (topic != null) {
      _result.topic = topic;
    }
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (originalPrincipal != null) {
      _result.originalPrincipal = originalPrincipal;
    }
    if (originalAuthData != null) {
      _result.originalAuthData = originalAuthData;
    }
    if (originalAuthMethod != null) {
      _result.originalAuthMethod = originalAuthMethod;
    }
    return _result;
  }
  factory CommandPartitionedTopicMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandPartitionedTopicMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandPartitionedTopicMetadata clone() => CommandPartitionedTopicMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandPartitionedTopicMetadata copyWith(void Function(CommandPartitionedTopicMetadata) updates) => super.copyWith((message) => updates(message as CommandPartitionedTopicMetadata)) as CommandPartitionedTopicMetadata; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandPartitionedTopicMetadata create() => CommandPartitionedTopicMetadata._();
  CommandPartitionedTopicMetadata createEmptyInstance() => create();
  static $pb.PbList<CommandPartitionedTopicMetadata> createRepeated() => $pb.PbList<CommandPartitionedTopicMetadata>();
  @$core.pragma('dart2js:noInline')
  static CommandPartitionedTopicMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandPartitionedTopicMetadata>(create);
  static CommandPartitionedTopicMetadata? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get topic => $_getSZ(0);
  @$pb.TagNumber(1)
  set topic($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTopic() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopic() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get requestId => $_getI64(1);
  @$pb.TagNumber(2)
  set requestId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get originalPrincipal => $_getSZ(2);
  @$pb.TagNumber(3)
  set originalPrincipal($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOriginalPrincipal() => $_has(2);
  @$pb.TagNumber(3)
  void clearOriginalPrincipal() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get originalAuthData => $_getSZ(3);
  @$pb.TagNumber(4)
  set originalAuthData($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOriginalAuthData() => $_has(3);
  @$pb.TagNumber(4)
  void clearOriginalAuthData() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get originalAuthMethod => $_getSZ(4);
  @$pb.TagNumber(5)
  set originalAuthMethod($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOriginalAuthMethod() => $_has(4);
  @$pb.TagNumber(5)
  void clearOriginalAuthMethod() => clearField(5);
}

class CommandPartitionedTopicMetadataResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandPartitionedTopicMetadataResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'partitions', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<CommandPartitionedTopicMetadataResponse_LookupType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'response', $pb.PbFieldType.OE, defaultOrMaker: CommandPartitionedTopicMetadataResponse_LookupType.Success, valueOf: CommandPartitionedTopicMetadataResponse_LookupType.valueOf, enumValues: CommandPartitionedTopicMetadataResponse_LookupType.values)
    ..e<ServerError>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', $pb.PbFieldType.OE, defaultOrMaker: ServerError.UnknownError, valueOf: ServerError.valueOf, enumValues: ServerError.values)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
  ;

  CommandPartitionedTopicMetadataResponse._() : super();
  factory CommandPartitionedTopicMetadataResponse({
    $core.int? partitions,
    $fixnum.Int64? requestId,
    CommandPartitionedTopicMetadataResponse_LookupType? response,
    ServerError? error,
    $core.String? message,
  }) {
    final _result = create();
    if (partitions != null) {
      _result.partitions = partitions;
    }
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (response != null) {
      _result.response = response;
    }
    if (error != null) {
      _result.error = error;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory CommandPartitionedTopicMetadataResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandPartitionedTopicMetadataResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandPartitionedTopicMetadataResponse clone() => CommandPartitionedTopicMetadataResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandPartitionedTopicMetadataResponse copyWith(void Function(CommandPartitionedTopicMetadataResponse) updates) => super.copyWith((message) => updates(message as CommandPartitionedTopicMetadataResponse)) as CommandPartitionedTopicMetadataResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandPartitionedTopicMetadataResponse create() => CommandPartitionedTopicMetadataResponse._();
  CommandPartitionedTopicMetadataResponse createEmptyInstance() => create();
  static $pb.PbList<CommandPartitionedTopicMetadataResponse> createRepeated() => $pb.PbList<CommandPartitionedTopicMetadataResponse>();
  @$core.pragma('dart2js:noInline')
  static CommandPartitionedTopicMetadataResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandPartitionedTopicMetadataResponse>(create);
  static CommandPartitionedTopicMetadataResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get partitions => $_getIZ(0);
  @$pb.TagNumber(1)
  set partitions($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPartitions() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartitions() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get requestId => $_getI64(1);
  @$pb.TagNumber(2)
  set requestId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => clearField(2);

  @$pb.TagNumber(3)
  CommandPartitionedTopicMetadataResponse_LookupType get response => $_getN(2);
  @$pb.TagNumber(3)
  set response(CommandPartitionedTopicMetadataResponse_LookupType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearResponse() => clearField(3);

  @$pb.TagNumber(4)
  ServerError get error => $_getN(3);
  @$pb.TagNumber(4)
  set error(ServerError v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasError() => $_has(3);
  @$pb.TagNumber(4)
  void clearError() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get message => $_getSZ(4);
  @$pb.TagNumber(5)
  set message($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessage() => clearField(5);
}

class CommandLookupTopic extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandLookupTopic', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'topic')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authoritative')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'originalPrincipal')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'originalAuthData')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'originalAuthMethod')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'advertisedListenerName')
  ;

  CommandLookupTopic._() : super();
  factory CommandLookupTopic({
    $core.String? topic,
    $fixnum.Int64? requestId,
    $core.bool? authoritative,
    $core.String? originalPrincipal,
    $core.String? originalAuthData,
    $core.String? originalAuthMethod,
    $core.String? advertisedListenerName,
  }) {
    final _result = create();
    if (topic != null) {
      _result.topic = topic;
    }
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (authoritative != null) {
      _result.authoritative = authoritative;
    }
    if (originalPrincipal != null) {
      _result.originalPrincipal = originalPrincipal;
    }
    if (originalAuthData != null) {
      _result.originalAuthData = originalAuthData;
    }
    if (originalAuthMethod != null) {
      _result.originalAuthMethod = originalAuthMethod;
    }
    if (advertisedListenerName != null) {
      _result.advertisedListenerName = advertisedListenerName;
    }
    return _result;
  }
  factory CommandLookupTopic.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandLookupTopic.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandLookupTopic clone() => CommandLookupTopic()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandLookupTopic copyWith(void Function(CommandLookupTopic) updates) => super.copyWith((message) => updates(message as CommandLookupTopic)) as CommandLookupTopic; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandLookupTopic create() => CommandLookupTopic._();
  CommandLookupTopic createEmptyInstance() => create();
  static $pb.PbList<CommandLookupTopic> createRepeated() => $pb.PbList<CommandLookupTopic>();
  @$core.pragma('dart2js:noInline')
  static CommandLookupTopic getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandLookupTopic>(create);
  static CommandLookupTopic? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get topic => $_getSZ(0);
  @$pb.TagNumber(1)
  set topic($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTopic() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopic() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get requestId => $_getI64(1);
  @$pb.TagNumber(2)
  set requestId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get authoritative => $_getBF(2);
  @$pb.TagNumber(3)
  set authoritative($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuthoritative() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthoritative() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get originalPrincipal => $_getSZ(3);
  @$pb.TagNumber(4)
  set originalPrincipal($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOriginalPrincipal() => $_has(3);
  @$pb.TagNumber(4)
  void clearOriginalPrincipal() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get originalAuthData => $_getSZ(4);
  @$pb.TagNumber(5)
  set originalAuthData($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOriginalAuthData() => $_has(4);
  @$pb.TagNumber(5)
  void clearOriginalAuthData() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get originalAuthMethod => $_getSZ(5);
  @$pb.TagNumber(6)
  set originalAuthMethod($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOriginalAuthMethod() => $_has(5);
  @$pb.TagNumber(6)
  void clearOriginalAuthMethod() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get advertisedListenerName => $_getSZ(6);
  @$pb.TagNumber(7)
  set advertisedListenerName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAdvertisedListenerName() => $_has(6);
  @$pb.TagNumber(7)
  void clearAdvertisedListenerName() => clearField(7);
}

class CommandLookupTopicResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandLookupTopicResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'brokerServiceUrl', protoName: 'brokerServiceUrl')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'brokerServiceUrlTls', protoName: 'brokerServiceUrlTls')
    ..e<CommandLookupTopicResponse_LookupType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'response', $pb.PbFieldType.OE, defaultOrMaker: CommandLookupTopicResponse_LookupType.Redirect, valueOf: CommandLookupTopicResponse_LookupType.valueOf, enumValues: CommandLookupTopicResponse_LookupType.values)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authoritative')
    ..e<ServerError>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', $pb.PbFieldType.OE, defaultOrMaker: ServerError.UnknownError, valueOf: ServerError.valueOf, enumValues: ServerError.values)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'proxyThroughServiceUrl')
  ;

  CommandLookupTopicResponse._() : super();
  factory CommandLookupTopicResponse({
    $core.String? brokerServiceUrl,
    $core.String? brokerServiceUrlTls,
    CommandLookupTopicResponse_LookupType? response,
    $fixnum.Int64? requestId,
    $core.bool? authoritative,
    ServerError? error,
    $core.String? message,
    $core.bool? proxyThroughServiceUrl,
  }) {
    final _result = create();
    if (brokerServiceUrl != null) {
      _result.brokerServiceUrl = brokerServiceUrl;
    }
    if (brokerServiceUrlTls != null) {
      _result.brokerServiceUrlTls = brokerServiceUrlTls;
    }
    if (response != null) {
      _result.response = response;
    }
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (authoritative != null) {
      _result.authoritative = authoritative;
    }
    if (error != null) {
      _result.error = error;
    }
    if (message != null) {
      _result.message = message;
    }
    if (proxyThroughServiceUrl != null) {
      _result.proxyThroughServiceUrl = proxyThroughServiceUrl;
    }
    return _result;
  }
  factory CommandLookupTopicResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandLookupTopicResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandLookupTopicResponse clone() => CommandLookupTopicResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandLookupTopicResponse copyWith(void Function(CommandLookupTopicResponse) updates) => super.copyWith((message) => updates(message as CommandLookupTopicResponse)) as CommandLookupTopicResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandLookupTopicResponse create() => CommandLookupTopicResponse._();
  CommandLookupTopicResponse createEmptyInstance() => create();
  static $pb.PbList<CommandLookupTopicResponse> createRepeated() => $pb.PbList<CommandLookupTopicResponse>();
  @$core.pragma('dart2js:noInline')
  static CommandLookupTopicResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandLookupTopicResponse>(create);
  static CommandLookupTopicResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get brokerServiceUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set brokerServiceUrl($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBrokerServiceUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearBrokerServiceUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get brokerServiceUrlTls => $_getSZ(1);
  @$pb.TagNumber(2)
  set brokerServiceUrlTls($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBrokerServiceUrlTls() => $_has(1);
  @$pb.TagNumber(2)
  void clearBrokerServiceUrlTls() => clearField(2);

  @$pb.TagNumber(3)
  CommandLookupTopicResponse_LookupType get response => $_getN(2);
  @$pb.TagNumber(3)
  set response(CommandLookupTopicResponse_LookupType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearResponse() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get requestId => $_getI64(3);
  @$pb.TagNumber(4)
  set requestId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRequestId() => $_has(3);
  @$pb.TagNumber(4)
  void clearRequestId() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get authoritative => $_getBF(4);
  @$pb.TagNumber(5)
  set authoritative($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAuthoritative() => $_has(4);
  @$pb.TagNumber(5)
  void clearAuthoritative() => clearField(5);

  @$pb.TagNumber(6)
  ServerError get error => $_getN(5);
  @$pb.TagNumber(6)
  set error(ServerError v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasError() => $_has(5);
  @$pb.TagNumber(6)
  void clearError() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get message => $_getSZ(6);
  @$pb.TagNumber(7)
  set message($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMessage() => $_has(6);
  @$pb.TagNumber(7)
  void clearMessage() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get proxyThroughServiceUrl => $_getBF(7);
  @$pb.TagNumber(8)
  set proxyThroughServiceUrl($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasProxyThroughServiceUrl() => $_has(7);
  @$pb.TagNumber(8)
  void clearProxyThroughServiceUrl() => clearField(8);
}

class CommandProducer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandProducer', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'topic')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'producerId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'producerName')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'encrypted')
    ..pc<KeyValue>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metadata', $pb.PbFieldType.PM, subBuilder: KeyValue.create)
    ..aOM<Schema>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schema', subBuilder: Schema.create)
    ..a<$fixnum.Int64>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'epoch', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.bool>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userProvidedProducerName', $pb.PbFieldType.OB, defaultOrMaker: true)
    ..e<ProducerAccessMode>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'producerAccessMode', $pb.PbFieldType.OE, defaultOrMaker: ProducerAccessMode.Shared, valueOf: ProducerAccessMode.valueOf, enumValues: ProducerAccessMode.values)
    ..a<$fixnum.Int64>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'topicEpoch', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
  ;

  CommandProducer._() : super();
  factory CommandProducer({
    $core.String? topic,
    $fixnum.Int64? producerId,
    $fixnum.Int64? requestId,
    $core.String? producerName,
    $core.bool? encrypted,
    $core.Iterable<KeyValue>? metadata,
    Schema? schema,
    $fixnum.Int64? epoch,
    $core.bool? userProvidedProducerName,
    ProducerAccessMode? producerAccessMode,
    $fixnum.Int64? topicEpoch,
  }) {
    final _result = create();
    if (topic != null) {
      _result.topic = topic;
    }
    if (producerId != null) {
      _result.producerId = producerId;
    }
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (producerName != null) {
      _result.producerName = producerName;
    }
    if (encrypted != null) {
      _result.encrypted = encrypted;
    }
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    if (schema != null) {
      _result.schema = schema;
    }
    if (epoch != null) {
      _result.epoch = epoch;
    }
    if (userProvidedProducerName != null) {
      _result.userProvidedProducerName = userProvidedProducerName;
    }
    if (producerAccessMode != null) {
      _result.producerAccessMode = producerAccessMode;
    }
    if (topicEpoch != null) {
      _result.topicEpoch = topicEpoch;
    }
    return _result;
  }
  factory CommandProducer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandProducer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandProducer clone() => CommandProducer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandProducer copyWith(void Function(CommandProducer) updates) => super.copyWith((message) => updates(message as CommandProducer)) as CommandProducer; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandProducer create() => CommandProducer._();
  CommandProducer createEmptyInstance() => create();
  static $pb.PbList<CommandProducer> createRepeated() => $pb.PbList<CommandProducer>();
  @$core.pragma('dart2js:noInline')
  static CommandProducer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandProducer>(create);
  static CommandProducer? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get topic => $_getSZ(0);
  @$pb.TagNumber(1)
  set topic($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTopic() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopic() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get producerId => $_getI64(1);
  @$pb.TagNumber(2)
  set producerId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProducerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProducerId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get requestId => $_getI64(2);
  @$pb.TagNumber(3)
  set requestId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRequestId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get producerName => $_getSZ(3);
  @$pb.TagNumber(4)
  set producerName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasProducerName() => $_has(3);
  @$pb.TagNumber(4)
  void clearProducerName() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get encrypted => $_getBF(4);
  @$pb.TagNumber(5)
  set encrypted($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEncrypted() => $_has(4);
  @$pb.TagNumber(5)
  void clearEncrypted() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<KeyValue> get metadata => $_getList(5);

  @$pb.TagNumber(7)
  Schema get schema => $_getN(6);
  @$pb.TagNumber(7)
  set schema(Schema v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSchema() => $_has(6);
  @$pb.TagNumber(7)
  void clearSchema() => clearField(7);
  @$pb.TagNumber(7)
  Schema ensureSchema() => $_ensure(6);

  @$pb.TagNumber(8)
  $fixnum.Int64 get epoch => $_getI64(7);
  @$pb.TagNumber(8)
  set epoch($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasEpoch() => $_has(7);
  @$pb.TagNumber(8)
  void clearEpoch() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get userProvidedProducerName => $_getB(8, true);
  @$pb.TagNumber(9)
  set userProvidedProducerName($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasUserProvidedProducerName() => $_has(8);
  @$pb.TagNumber(9)
  void clearUserProvidedProducerName() => clearField(9);

  @$pb.TagNumber(10)
  ProducerAccessMode get producerAccessMode => $_getN(9);
  @$pb.TagNumber(10)
  set producerAccessMode(ProducerAccessMode v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasProducerAccessMode() => $_has(9);
  @$pb.TagNumber(10)
  void clearProducerAccessMode() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get topicEpoch => $_getI64(10);
  @$pb.TagNumber(11)
  set topicEpoch($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasTopicEpoch() => $_has(10);
  @$pb.TagNumber(11)
  void clearTopicEpoch() => clearField(11);
}

class CommandSend extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandSend', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'producerId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sequenceId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numMessages', $pb.PbFieldType.O3, defaultOrMaker: 1)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidLeastBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidMostBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'highestSequenceId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isChunk')
  ;

  CommandSend._() : super();
  factory CommandSend({
    $fixnum.Int64? producerId,
    $fixnum.Int64? sequenceId,
    $core.int? numMessages,
    $fixnum.Int64? txnidLeastBits,
    $fixnum.Int64? txnidMostBits,
    $fixnum.Int64? highestSequenceId,
    $core.bool? isChunk,
  }) {
    final _result = create();
    if (producerId != null) {
      _result.producerId = producerId;
    }
    if (sequenceId != null) {
      _result.sequenceId = sequenceId;
    }
    if (numMessages != null) {
      _result.numMessages = numMessages;
    }
    if (txnidLeastBits != null) {
      _result.txnidLeastBits = txnidLeastBits;
    }
    if (txnidMostBits != null) {
      _result.txnidMostBits = txnidMostBits;
    }
    if (highestSequenceId != null) {
      _result.highestSequenceId = highestSequenceId;
    }
    if (isChunk != null) {
      _result.isChunk = isChunk;
    }
    return _result;
  }
  factory CommandSend.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandSend.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandSend clone() => CommandSend()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandSend copyWith(void Function(CommandSend) updates) => super.copyWith((message) => updates(message as CommandSend)) as CommandSend; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandSend create() => CommandSend._();
  CommandSend createEmptyInstance() => create();
  static $pb.PbList<CommandSend> createRepeated() => $pb.PbList<CommandSend>();
  @$core.pragma('dart2js:noInline')
  static CommandSend getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandSend>(create);
  static CommandSend? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get producerId => $_getI64(0);
  @$pb.TagNumber(1)
  set producerId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProducerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProducerId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get sequenceId => $_getI64(1);
  @$pb.TagNumber(2)
  set sequenceId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSequenceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSequenceId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get numMessages => $_getI(2, 1);
  @$pb.TagNumber(3)
  set numMessages($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNumMessages() => $_has(2);
  @$pb.TagNumber(3)
  void clearNumMessages() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get txnidLeastBits => $_getI64(3);
  @$pb.TagNumber(4)
  set txnidLeastBits($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTxnidLeastBits() => $_has(3);
  @$pb.TagNumber(4)
  void clearTxnidLeastBits() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get txnidMostBits => $_getI64(4);
  @$pb.TagNumber(5)
  set txnidMostBits($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTxnidMostBits() => $_has(4);
  @$pb.TagNumber(5)
  void clearTxnidMostBits() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get highestSequenceId => $_getI64(5);
  @$pb.TagNumber(6)
  set highestSequenceId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHighestSequenceId() => $_has(5);
  @$pb.TagNumber(6)
  void clearHighestSequenceId() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isChunk => $_getBF(6);
  @$pb.TagNumber(7)
  set isChunk($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIsChunk() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsChunk() => clearField(7);
}

class CommandSendReceipt extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandSendReceipt', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'producerId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sequenceId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<MessageIdData>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageId', subBuilder: MessageIdData.create)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'highestSequenceId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
  ;

  CommandSendReceipt._() : super();
  factory CommandSendReceipt({
    $fixnum.Int64? producerId,
    $fixnum.Int64? sequenceId,
    MessageIdData? messageId,
    $fixnum.Int64? highestSequenceId,
  }) {
    final _result = create();
    if (producerId != null) {
      _result.producerId = producerId;
    }
    if (sequenceId != null) {
      _result.sequenceId = sequenceId;
    }
    if (messageId != null) {
      _result.messageId = messageId;
    }
    if (highestSequenceId != null) {
      _result.highestSequenceId = highestSequenceId;
    }
    return _result;
  }
  factory CommandSendReceipt.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandSendReceipt.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandSendReceipt clone() => CommandSendReceipt()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandSendReceipt copyWith(void Function(CommandSendReceipt) updates) => super.copyWith((message) => updates(message as CommandSendReceipt)) as CommandSendReceipt; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandSendReceipt create() => CommandSendReceipt._();
  CommandSendReceipt createEmptyInstance() => create();
  static $pb.PbList<CommandSendReceipt> createRepeated() => $pb.PbList<CommandSendReceipt>();
  @$core.pragma('dart2js:noInline')
  static CommandSendReceipt getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandSendReceipt>(create);
  static CommandSendReceipt? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get producerId => $_getI64(0);
  @$pb.TagNumber(1)
  set producerId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProducerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProducerId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get sequenceId => $_getI64(1);
  @$pb.TagNumber(2)
  set sequenceId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSequenceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSequenceId() => clearField(2);

  @$pb.TagNumber(3)
  MessageIdData get messageId => $_getN(2);
  @$pb.TagNumber(3)
  set messageId(MessageIdData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessageId() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessageId() => clearField(3);
  @$pb.TagNumber(3)
  MessageIdData ensureMessageId() => $_ensure(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get highestSequenceId => $_getI64(3);
  @$pb.TagNumber(4)
  set highestSequenceId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHighestSequenceId() => $_has(3);
  @$pb.TagNumber(4)
  void clearHighestSequenceId() => clearField(4);
}

class CommandSendError extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandSendError', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'producerId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sequenceId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<ServerError>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', $pb.PbFieldType.QE, defaultOrMaker: ServerError.UnknownError, valueOf: ServerError.valueOf, enumValues: ServerError.values)
    ..aQS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
  ;

  CommandSendError._() : super();
  factory CommandSendError({
    $fixnum.Int64? producerId,
    $fixnum.Int64? sequenceId,
    ServerError? error,
    $core.String? message,
  }) {
    final _result = create();
    if (producerId != null) {
      _result.producerId = producerId;
    }
    if (sequenceId != null) {
      _result.sequenceId = sequenceId;
    }
    if (error != null) {
      _result.error = error;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory CommandSendError.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandSendError.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandSendError clone() => CommandSendError()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandSendError copyWith(void Function(CommandSendError) updates) => super.copyWith((message) => updates(message as CommandSendError)) as CommandSendError; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandSendError create() => CommandSendError._();
  CommandSendError createEmptyInstance() => create();
  static $pb.PbList<CommandSendError> createRepeated() => $pb.PbList<CommandSendError>();
  @$core.pragma('dart2js:noInline')
  static CommandSendError getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandSendError>(create);
  static CommandSendError? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get producerId => $_getI64(0);
  @$pb.TagNumber(1)
  set producerId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProducerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProducerId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get sequenceId => $_getI64(1);
  @$pb.TagNumber(2)
  set sequenceId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSequenceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSequenceId() => clearField(2);

  @$pb.TagNumber(3)
  ServerError get error => $_getN(2);
  @$pb.TagNumber(3)
  set error(ServerError v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get message => $_getSZ(3);
  @$pb.TagNumber(4)
  set message($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMessage() => $_has(3);
  @$pb.TagNumber(4)
  void clearMessage() => clearField(4);
}

class CommandMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'consumerId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aQM<MessageIdData>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageId', subBuilder: MessageIdData.create)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'redeliveryCount', $pb.PbFieldType.OU3)
    ..p<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ackSet', $pb.PbFieldType.P6)
  ;

  CommandMessage._() : super();
  factory CommandMessage({
    $fixnum.Int64? consumerId,
    MessageIdData? messageId,
    $core.int? redeliveryCount,
    $core.Iterable<$fixnum.Int64>? ackSet,
  }) {
    final _result = create();
    if (consumerId != null) {
      _result.consumerId = consumerId;
    }
    if (messageId != null) {
      _result.messageId = messageId;
    }
    if (redeliveryCount != null) {
      _result.redeliveryCount = redeliveryCount;
    }
    if (ackSet != null) {
      _result.ackSet.addAll(ackSet);
    }
    return _result;
  }
  factory CommandMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandMessage clone() => CommandMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandMessage copyWith(void Function(CommandMessage) updates) => super.copyWith((message) => updates(message as CommandMessage)) as CommandMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandMessage create() => CommandMessage._();
  CommandMessage createEmptyInstance() => create();
  static $pb.PbList<CommandMessage> createRepeated() => $pb.PbList<CommandMessage>();
  @$core.pragma('dart2js:noInline')
  static CommandMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandMessage>(create);
  static CommandMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get consumerId => $_getI64(0);
  @$pb.TagNumber(1)
  set consumerId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConsumerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConsumerId() => clearField(1);

  @$pb.TagNumber(2)
  MessageIdData get messageId => $_getN(1);
  @$pb.TagNumber(2)
  set messageId(MessageIdData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessageId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessageId() => clearField(2);
  @$pb.TagNumber(2)
  MessageIdData ensureMessageId() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get redeliveryCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set redeliveryCount($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRedeliveryCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearRedeliveryCount() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$fixnum.Int64> get ackSet => $_getList(3);
}

class CommandAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandAck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'consumerId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<CommandAck_AckType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ackType', $pb.PbFieldType.QE, defaultOrMaker: CommandAck_AckType.Individual, valueOf: CommandAck_AckType.valueOf, enumValues: CommandAck_AckType.values)
    ..pc<MessageIdData>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageId', $pb.PbFieldType.PM, subBuilder: MessageIdData.create)
    ..e<CommandAck_ValidationError>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'validationError', $pb.PbFieldType.OE, defaultOrMaker: CommandAck_ValidationError.UncompressedSizeCorruption, valueOf: CommandAck_ValidationError.valueOf, enumValues: CommandAck_ValidationError.values)
    ..pc<KeyLongValue>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'properties', $pb.PbFieldType.PM, subBuilder: KeyLongValue.create)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidLeastBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidMostBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
  ;

  CommandAck._() : super();
  factory CommandAck({
    $fixnum.Int64? consumerId,
    CommandAck_AckType? ackType,
    $core.Iterable<MessageIdData>? messageId,
    CommandAck_ValidationError? validationError,
    $core.Iterable<KeyLongValue>? properties,
    $fixnum.Int64? txnidLeastBits,
    $fixnum.Int64? txnidMostBits,
    $fixnum.Int64? requestId,
  }) {
    final _result = create();
    if (consumerId != null) {
      _result.consumerId = consumerId;
    }
    if (ackType != null) {
      _result.ackType = ackType;
    }
    if (messageId != null) {
      _result.messageId.addAll(messageId);
    }
    if (validationError != null) {
      _result.validationError = validationError;
    }
    if (properties != null) {
      _result.properties.addAll(properties);
    }
    if (txnidLeastBits != null) {
      _result.txnidLeastBits = txnidLeastBits;
    }
    if (txnidMostBits != null) {
      _result.txnidMostBits = txnidMostBits;
    }
    if (requestId != null) {
      _result.requestId = requestId;
    }
    return _result;
  }
  factory CommandAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandAck clone() => CommandAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandAck copyWith(void Function(CommandAck) updates) => super.copyWith((message) => updates(message as CommandAck)) as CommandAck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandAck create() => CommandAck._();
  CommandAck createEmptyInstance() => create();
  static $pb.PbList<CommandAck> createRepeated() => $pb.PbList<CommandAck>();
  @$core.pragma('dart2js:noInline')
  static CommandAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandAck>(create);
  static CommandAck? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get consumerId => $_getI64(0);
  @$pb.TagNumber(1)
  set consumerId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConsumerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConsumerId() => clearField(1);

  @$pb.TagNumber(2)
  CommandAck_AckType get ackType => $_getN(1);
  @$pb.TagNumber(2)
  set ackType(CommandAck_AckType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAckType() => $_has(1);
  @$pb.TagNumber(2)
  void clearAckType() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<MessageIdData> get messageId => $_getList(2);

  @$pb.TagNumber(4)
  CommandAck_ValidationError get validationError => $_getN(3);
  @$pb.TagNumber(4)
  set validationError(CommandAck_ValidationError v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasValidationError() => $_has(3);
  @$pb.TagNumber(4)
  void clearValidationError() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<KeyLongValue> get properties => $_getList(4);

  @$pb.TagNumber(6)
  $fixnum.Int64 get txnidLeastBits => $_getI64(5);
  @$pb.TagNumber(6)
  set txnidLeastBits($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTxnidLeastBits() => $_has(5);
  @$pb.TagNumber(6)
  void clearTxnidLeastBits() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get txnidMostBits => $_getI64(6);
  @$pb.TagNumber(7)
  set txnidMostBits($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTxnidMostBits() => $_has(6);
  @$pb.TagNumber(7)
  void clearTxnidMostBits() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get requestId => $_getI64(7);
  @$pb.TagNumber(8)
  set requestId($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRequestId() => $_has(7);
  @$pb.TagNumber(8)
  void clearRequestId() => clearField(8);
}

class CommandAckResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandAckResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'consumerId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidLeastBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidMostBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<ServerError>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', $pb.PbFieldType.OE, defaultOrMaker: ServerError.UnknownError, valueOf: ServerError.valueOf, enumValues: ServerError.values)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
  ;

  CommandAckResponse._() : super();
  factory CommandAckResponse({
    $fixnum.Int64? consumerId,
    $fixnum.Int64? txnidLeastBits,
    $fixnum.Int64? txnidMostBits,
    ServerError? error,
    $core.String? message,
    $fixnum.Int64? requestId,
  }) {
    final _result = create();
    if (consumerId != null) {
      _result.consumerId = consumerId;
    }
    if (txnidLeastBits != null) {
      _result.txnidLeastBits = txnidLeastBits;
    }
    if (txnidMostBits != null) {
      _result.txnidMostBits = txnidMostBits;
    }
    if (error != null) {
      _result.error = error;
    }
    if (message != null) {
      _result.message = message;
    }
    if (requestId != null) {
      _result.requestId = requestId;
    }
    return _result;
  }
  factory CommandAckResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandAckResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandAckResponse clone() => CommandAckResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandAckResponse copyWith(void Function(CommandAckResponse) updates) => super.copyWith((message) => updates(message as CommandAckResponse)) as CommandAckResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandAckResponse create() => CommandAckResponse._();
  CommandAckResponse createEmptyInstance() => create();
  static $pb.PbList<CommandAckResponse> createRepeated() => $pb.PbList<CommandAckResponse>();
  @$core.pragma('dart2js:noInline')
  static CommandAckResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandAckResponse>(create);
  static CommandAckResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get consumerId => $_getI64(0);
  @$pb.TagNumber(1)
  set consumerId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConsumerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConsumerId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get txnidLeastBits => $_getI64(1);
  @$pb.TagNumber(2)
  set txnidLeastBits($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxnidLeastBits() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxnidLeastBits() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get txnidMostBits => $_getI64(2);
  @$pb.TagNumber(3)
  set txnidMostBits($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTxnidMostBits() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxnidMostBits() => clearField(3);

  @$pb.TagNumber(4)
  ServerError get error => $_getN(3);
  @$pb.TagNumber(4)
  set error(ServerError v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasError() => $_has(3);
  @$pb.TagNumber(4)
  void clearError() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get message => $_getSZ(4);
  @$pb.TagNumber(5)
  set message($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessage() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get requestId => $_getI64(5);
  @$pb.TagNumber(6)
  set requestId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRequestId() => $_has(5);
  @$pb.TagNumber(6)
  void clearRequestId() => clearField(6);
}

class CommandActiveConsumerChange extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandActiveConsumerChange', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'consumerId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isActive')
  ;

  CommandActiveConsumerChange._() : super();
  factory CommandActiveConsumerChange({
    $fixnum.Int64? consumerId,
    $core.bool? isActive,
  }) {
    final _result = create();
    if (consumerId != null) {
      _result.consumerId = consumerId;
    }
    if (isActive != null) {
      _result.isActive = isActive;
    }
    return _result;
  }
  factory CommandActiveConsumerChange.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandActiveConsumerChange.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandActiveConsumerChange clone() => CommandActiveConsumerChange()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandActiveConsumerChange copyWith(void Function(CommandActiveConsumerChange) updates) => super.copyWith((message) => updates(message as CommandActiveConsumerChange)) as CommandActiveConsumerChange; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandActiveConsumerChange create() => CommandActiveConsumerChange._();
  CommandActiveConsumerChange createEmptyInstance() => create();
  static $pb.PbList<CommandActiveConsumerChange> createRepeated() => $pb.PbList<CommandActiveConsumerChange>();
  @$core.pragma('dart2js:noInline')
  static CommandActiveConsumerChange getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandActiveConsumerChange>(create);
  static CommandActiveConsumerChange? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get consumerId => $_getI64(0);
  @$pb.TagNumber(1)
  set consumerId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConsumerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConsumerId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isActive => $_getBF(1);
  @$pb.TagNumber(2)
  set isActive($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsActive() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsActive() => clearField(2);
}

class CommandFlow extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandFlow', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'consumerId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messagePermits', $pb.PbFieldType.QU3, protoName: 'messagePermits')
  ;

  CommandFlow._() : super();
  factory CommandFlow({
    $fixnum.Int64? consumerId,
    $core.int? messagePermits,
  }) {
    final _result = create();
    if (consumerId != null) {
      _result.consumerId = consumerId;
    }
    if (messagePermits != null) {
      _result.messagePermits = messagePermits;
    }
    return _result;
  }
  factory CommandFlow.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandFlow.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandFlow clone() => CommandFlow()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandFlow copyWith(void Function(CommandFlow) updates) => super.copyWith((message) => updates(message as CommandFlow)) as CommandFlow; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandFlow create() => CommandFlow._();
  CommandFlow createEmptyInstance() => create();
  static $pb.PbList<CommandFlow> createRepeated() => $pb.PbList<CommandFlow>();
  @$core.pragma('dart2js:noInline')
  static CommandFlow getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandFlow>(create);
  static CommandFlow? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get consumerId => $_getI64(0);
  @$pb.TagNumber(1)
  set consumerId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConsumerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConsumerId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get messagePermits => $_getIZ(1);
  @$pb.TagNumber(2)
  set messagePermits($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessagePermits() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessagePermits() => clearField(2);
}

class CommandUnsubscribe extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandUnsubscribe', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'consumerId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
  ;

  CommandUnsubscribe._() : super();
  factory CommandUnsubscribe({
    $fixnum.Int64? consumerId,
    $fixnum.Int64? requestId,
  }) {
    final _result = create();
    if (consumerId != null) {
      _result.consumerId = consumerId;
    }
    if (requestId != null) {
      _result.requestId = requestId;
    }
    return _result;
  }
  factory CommandUnsubscribe.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandUnsubscribe.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandUnsubscribe clone() => CommandUnsubscribe()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandUnsubscribe copyWith(void Function(CommandUnsubscribe) updates) => super.copyWith((message) => updates(message as CommandUnsubscribe)) as CommandUnsubscribe; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandUnsubscribe create() => CommandUnsubscribe._();
  CommandUnsubscribe createEmptyInstance() => create();
  static $pb.PbList<CommandUnsubscribe> createRepeated() => $pb.PbList<CommandUnsubscribe>();
  @$core.pragma('dart2js:noInline')
  static CommandUnsubscribe getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandUnsubscribe>(create);
  static CommandUnsubscribe? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get consumerId => $_getI64(0);
  @$pb.TagNumber(1)
  set consumerId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConsumerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConsumerId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get requestId => $_getI64(1);
  @$pb.TagNumber(2)
  set requestId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => clearField(2);
}

class CommandSeek extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandSeek', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'consumerId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<MessageIdData>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageId', subBuilder: MessageIdData.create)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messagePublishTime', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
  ;

  CommandSeek._() : super();
  factory CommandSeek({
    $fixnum.Int64? consumerId,
    $fixnum.Int64? requestId,
    MessageIdData? messageId,
    $fixnum.Int64? messagePublishTime,
  }) {
    final _result = create();
    if (consumerId != null) {
      _result.consumerId = consumerId;
    }
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (messageId != null) {
      _result.messageId = messageId;
    }
    if (messagePublishTime != null) {
      _result.messagePublishTime = messagePublishTime;
    }
    return _result;
  }
  factory CommandSeek.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandSeek.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandSeek clone() => CommandSeek()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandSeek copyWith(void Function(CommandSeek) updates) => super.copyWith((message) => updates(message as CommandSeek)) as CommandSeek; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandSeek create() => CommandSeek._();
  CommandSeek createEmptyInstance() => create();
  static $pb.PbList<CommandSeek> createRepeated() => $pb.PbList<CommandSeek>();
  @$core.pragma('dart2js:noInline')
  static CommandSeek getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandSeek>(create);
  static CommandSeek? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get consumerId => $_getI64(0);
  @$pb.TagNumber(1)
  set consumerId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConsumerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConsumerId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get requestId => $_getI64(1);
  @$pb.TagNumber(2)
  set requestId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => clearField(2);

  @$pb.TagNumber(3)
  MessageIdData get messageId => $_getN(2);
  @$pb.TagNumber(3)
  set messageId(MessageIdData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessageId() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessageId() => clearField(3);
  @$pb.TagNumber(3)
  MessageIdData ensureMessageId() => $_ensure(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get messagePublishTime => $_getI64(3);
  @$pb.TagNumber(4)
  set messagePublishTime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMessagePublishTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearMessagePublishTime() => clearField(4);
}

class CommandReachedEndOfTopic extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandReachedEndOfTopic', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'consumerId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
  ;

  CommandReachedEndOfTopic._() : super();
  factory CommandReachedEndOfTopic({
    $fixnum.Int64? consumerId,
  }) {
    final _result = create();
    if (consumerId != null) {
      _result.consumerId = consumerId;
    }
    return _result;
  }
  factory CommandReachedEndOfTopic.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandReachedEndOfTopic.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandReachedEndOfTopic clone() => CommandReachedEndOfTopic()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandReachedEndOfTopic copyWith(void Function(CommandReachedEndOfTopic) updates) => super.copyWith((message) => updates(message as CommandReachedEndOfTopic)) as CommandReachedEndOfTopic; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandReachedEndOfTopic create() => CommandReachedEndOfTopic._();
  CommandReachedEndOfTopic createEmptyInstance() => create();
  static $pb.PbList<CommandReachedEndOfTopic> createRepeated() => $pb.PbList<CommandReachedEndOfTopic>();
  @$core.pragma('dart2js:noInline')
  static CommandReachedEndOfTopic getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandReachedEndOfTopic>(create);
  static CommandReachedEndOfTopic? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get consumerId => $_getI64(0);
  @$pb.TagNumber(1)
  set consumerId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConsumerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConsumerId() => clearField(1);
}

class CommandCloseProducer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandCloseProducer', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'producerId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
  ;

  CommandCloseProducer._() : super();
  factory CommandCloseProducer({
    $fixnum.Int64? producerId,
    $fixnum.Int64? requestId,
  }) {
    final _result = create();
    if (producerId != null) {
      _result.producerId = producerId;
    }
    if (requestId != null) {
      _result.requestId = requestId;
    }
    return _result;
  }
  factory CommandCloseProducer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandCloseProducer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandCloseProducer clone() => CommandCloseProducer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandCloseProducer copyWith(void Function(CommandCloseProducer) updates) => super.copyWith((message) => updates(message as CommandCloseProducer)) as CommandCloseProducer; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandCloseProducer create() => CommandCloseProducer._();
  CommandCloseProducer createEmptyInstance() => create();
  static $pb.PbList<CommandCloseProducer> createRepeated() => $pb.PbList<CommandCloseProducer>();
  @$core.pragma('dart2js:noInline')
  static CommandCloseProducer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandCloseProducer>(create);
  static CommandCloseProducer? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get producerId => $_getI64(0);
  @$pb.TagNumber(1)
  set producerId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProducerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProducerId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get requestId => $_getI64(1);
  @$pb.TagNumber(2)
  set requestId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => clearField(2);
}

class CommandCloseConsumer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandCloseConsumer', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'consumerId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
  ;

  CommandCloseConsumer._() : super();
  factory CommandCloseConsumer({
    $fixnum.Int64? consumerId,
    $fixnum.Int64? requestId,
  }) {
    final _result = create();
    if (consumerId != null) {
      _result.consumerId = consumerId;
    }
    if (requestId != null) {
      _result.requestId = requestId;
    }
    return _result;
  }
  factory CommandCloseConsumer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandCloseConsumer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandCloseConsumer clone() => CommandCloseConsumer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandCloseConsumer copyWith(void Function(CommandCloseConsumer) updates) => super.copyWith((message) => updates(message as CommandCloseConsumer)) as CommandCloseConsumer; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandCloseConsumer create() => CommandCloseConsumer._();
  CommandCloseConsumer createEmptyInstance() => create();
  static $pb.PbList<CommandCloseConsumer> createRepeated() => $pb.PbList<CommandCloseConsumer>();
  @$core.pragma('dart2js:noInline')
  static CommandCloseConsumer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandCloseConsumer>(create);
  static CommandCloseConsumer? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get consumerId => $_getI64(0);
  @$pb.TagNumber(1)
  set consumerId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConsumerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConsumerId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get requestId => $_getI64(1);
  @$pb.TagNumber(2)
  set requestId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => clearField(2);
}

class CommandRedeliverUnacknowledgedMessages extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandRedeliverUnacknowledgedMessages', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'consumerId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<MessageIdData>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageIds', $pb.PbFieldType.PM, subBuilder: MessageIdData.create)
  ;

  CommandRedeliverUnacknowledgedMessages._() : super();
  factory CommandRedeliverUnacknowledgedMessages({
    $fixnum.Int64? consumerId,
    $core.Iterable<MessageIdData>? messageIds,
  }) {
    final _result = create();
    if (consumerId != null) {
      _result.consumerId = consumerId;
    }
    if (messageIds != null) {
      _result.messageIds.addAll(messageIds);
    }
    return _result;
  }
  factory CommandRedeliverUnacknowledgedMessages.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandRedeliverUnacknowledgedMessages.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandRedeliverUnacknowledgedMessages clone() => CommandRedeliverUnacknowledgedMessages()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandRedeliverUnacknowledgedMessages copyWith(void Function(CommandRedeliverUnacknowledgedMessages) updates) => super.copyWith((message) => updates(message as CommandRedeliverUnacknowledgedMessages)) as CommandRedeliverUnacknowledgedMessages; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandRedeliverUnacknowledgedMessages create() => CommandRedeliverUnacknowledgedMessages._();
  CommandRedeliverUnacknowledgedMessages createEmptyInstance() => create();
  static $pb.PbList<CommandRedeliverUnacknowledgedMessages> createRepeated() => $pb.PbList<CommandRedeliverUnacknowledgedMessages>();
  @$core.pragma('dart2js:noInline')
  static CommandRedeliverUnacknowledgedMessages getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandRedeliverUnacknowledgedMessages>(create);
  static CommandRedeliverUnacknowledgedMessages? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get consumerId => $_getI64(0);
  @$pb.TagNumber(1)
  set consumerId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConsumerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConsumerId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<MessageIdData> get messageIds => $_getList(1);
}

class CommandSuccess extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandSuccess', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<Schema>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schema', subBuilder: Schema.create)
  ;

  CommandSuccess._() : super();
  factory CommandSuccess({
    $fixnum.Int64? requestId,
    Schema? schema,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (schema != null) {
      _result.schema = schema;
    }
    return _result;
  }
  factory CommandSuccess.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandSuccess.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandSuccess clone() => CommandSuccess()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandSuccess copyWith(void Function(CommandSuccess) updates) => super.copyWith((message) => updates(message as CommandSuccess)) as CommandSuccess; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandSuccess create() => CommandSuccess._();
  CommandSuccess createEmptyInstance() => create();
  static $pb.PbList<CommandSuccess> createRepeated() => $pb.PbList<CommandSuccess>();
  @$core.pragma('dart2js:noInline')
  static CommandSuccess getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandSuccess>(create);
  static CommandSuccess? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get requestId => $_getI64(0);
  @$pb.TagNumber(1)
  set requestId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  Schema get schema => $_getN(1);
  @$pb.TagNumber(2)
  set schema(Schema v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSchema() => $_has(1);
  @$pb.TagNumber(2)
  void clearSchema() => clearField(2);
  @$pb.TagNumber(2)
  Schema ensureSchema() => $_ensure(1);
}

class CommandProducerSuccess extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandProducerSuccess', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'producerName')
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastSequenceId', $pb.PbFieldType.O6, defaultOrMaker: $pb.parseLongInt('-1'))
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schemaVersion', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'topicEpoch', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.bool>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'producerReady', $pb.PbFieldType.OB, defaultOrMaker: true)
  ;

  CommandProducerSuccess._() : super();
  factory CommandProducerSuccess({
    $fixnum.Int64? requestId,
    $core.String? producerName,
    $fixnum.Int64? lastSequenceId,
    $core.List<$core.int>? schemaVersion,
    $fixnum.Int64? topicEpoch,
    $core.bool? producerReady,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (producerName != null) {
      _result.producerName = producerName;
    }
    if (lastSequenceId != null) {
      _result.lastSequenceId = lastSequenceId;
    }
    if (schemaVersion != null) {
      _result.schemaVersion = schemaVersion;
    }
    if (topicEpoch != null) {
      _result.topicEpoch = topicEpoch;
    }
    if (producerReady != null) {
      _result.producerReady = producerReady;
    }
    return _result;
  }
  factory CommandProducerSuccess.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandProducerSuccess.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandProducerSuccess clone() => CommandProducerSuccess()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandProducerSuccess copyWith(void Function(CommandProducerSuccess) updates) => super.copyWith((message) => updates(message as CommandProducerSuccess)) as CommandProducerSuccess; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandProducerSuccess create() => CommandProducerSuccess._();
  CommandProducerSuccess createEmptyInstance() => create();
  static $pb.PbList<CommandProducerSuccess> createRepeated() => $pb.PbList<CommandProducerSuccess>();
  @$core.pragma('dart2js:noInline')
  static CommandProducerSuccess getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandProducerSuccess>(create);
  static CommandProducerSuccess? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get requestId => $_getI64(0);
  @$pb.TagNumber(1)
  set requestId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get producerName => $_getSZ(1);
  @$pb.TagNumber(2)
  set producerName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProducerName() => $_has(1);
  @$pb.TagNumber(2)
  void clearProducerName() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get lastSequenceId => $_getI64(2);
  @$pb.TagNumber(3)
  set lastSequenceId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastSequenceId() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastSequenceId() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get schemaVersion => $_getN(3);
  @$pb.TagNumber(4)
  set schemaVersion($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSchemaVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearSchemaVersion() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get topicEpoch => $_getI64(4);
  @$pb.TagNumber(5)
  set topicEpoch($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTopicEpoch() => $_has(4);
  @$pb.TagNumber(5)
  void clearTopicEpoch() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get producerReady => $_getB(5, true);
  @$pb.TagNumber(6)
  set producerReady($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasProducerReady() => $_has(5);
  @$pb.TagNumber(6)
  void clearProducerReady() => clearField(6);
}

class CommandError extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandError', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<ServerError>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', $pb.PbFieldType.QE, defaultOrMaker: ServerError.UnknownError, valueOf: ServerError.valueOf, enumValues: ServerError.values)
    ..aQS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
  ;

  CommandError._() : super();
  factory CommandError({
    $fixnum.Int64? requestId,
    ServerError? error,
    $core.String? message,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (error != null) {
      _result.error = error;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory CommandError.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandError.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandError clone() => CommandError()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandError copyWith(void Function(CommandError) updates) => super.copyWith((message) => updates(message as CommandError)) as CommandError; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandError create() => CommandError._();
  CommandError createEmptyInstance() => create();
  static $pb.PbList<CommandError> createRepeated() => $pb.PbList<CommandError>();
  @$core.pragma('dart2js:noInline')
  static CommandError getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandError>(create);
  static CommandError? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get requestId => $_getI64(0);
  @$pb.TagNumber(1)
  set requestId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  ServerError get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ServerError v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);
}

class CommandPing extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandPing', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  CommandPing._() : super();
  factory CommandPing() => create();
  factory CommandPing.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandPing.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandPing clone() => CommandPing()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandPing copyWith(void Function(CommandPing) updates) => super.copyWith((message) => updates(message as CommandPing)) as CommandPing; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandPing create() => CommandPing._();
  CommandPing createEmptyInstance() => create();
  static $pb.PbList<CommandPing> createRepeated() => $pb.PbList<CommandPing>();
  @$core.pragma('dart2js:noInline')
  static CommandPing getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandPing>(create);
  static CommandPing? _defaultInstance;
}

class CommandPong extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandPong', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  CommandPong._() : super();
  factory CommandPong() => create();
  factory CommandPong.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandPong.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandPong clone() => CommandPong()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandPong copyWith(void Function(CommandPong) updates) => super.copyWith((message) => updates(message as CommandPong)) as CommandPong; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandPong create() => CommandPong._();
  CommandPong createEmptyInstance() => create();
  static $pb.PbList<CommandPong> createRepeated() => $pb.PbList<CommandPong>();
  @$core.pragma('dart2js:noInline')
  static CommandPong getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandPong>(create);
  static CommandPong? _defaultInstance;
}

class CommandConsumerStats extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandConsumerStats', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'consumerId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
  ;

  CommandConsumerStats._() : super();
  factory CommandConsumerStats({
    $fixnum.Int64? requestId,
    $fixnum.Int64? consumerId,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (consumerId != null) {
      _result.consumerId = consumerId;
    }
    return _result;
  }
  factory CommandConsumerStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandConsumerStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandConsumerStats clone() => CommandConsumerStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandConsumerStats copyWith(void Function(CommandConsumerStats) updates) => super.copyWith((message) => updates(message as CommandConsumerStats)) as CommandConsumerStats; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandConsumerStats create() => CommandConsumerStats._();
  CommandConsumerStats createEmptyInstance() => create();
  static $pb.PbList<CommandConsumerStats> createRepeated() => $pb.PbList<CommandConsumerStats>();
  @$core.pragma('dart2js:noInline')
  static CommandConsumerStats getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandConsumerStats>(create);
  static CommandConsumerStats? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get requestId => $_getI64(0);
  @$pb.TagNumber(1)
  set requestId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(4)
  $fixnum.Int64 get consumerId => $_getI64(1);
  @$pb.TagNumber(4)
  set consumerId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(4)
  $core.bool hasConsumerId() => $_has(1);
  @$pb.TagNumber(4)
  void clearConsumerId() => clearField(4);
}

class CommandConsumerStatsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandConsumerStatsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<ServerError>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errorCode', $pb.PbFieldType.OE, defaultOrMaker: ServerError.UnknownError, valueOf: ServerError.valueOf, enumValues: ServerError.values)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errorMessage')
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msgRateOut', $pb.PbFieldType.OD, protoName: 'msgRateOut')
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msgThroughputOut', $pb.PbFieldType.OD, protoName: 'msgThroughputOut')
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msgRateRedeliver', $pb.PbFieldType.OD, protoName: 'msgRateRedeliver')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'consumerName', protoName: 'consumerName')
    ..a<$fixnum.Int64>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'availablePermits', $pb.PbFieldType.OU6, protoName: 'availablePermits', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unackedMessages', $pb.PbFieldType.OU6, protoName: 'unackedMessages', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockedConsumerOnUnackedMsgs', protoName: 'blockedConsumerOnUnackedMsgs')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedSince', protoName: 'connectedSince')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..a<$core.double>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msgRateExpired', $pb.PbFieldType.OD, protoName: 'msgRateExpired')
    ..a<$fixnum.Int64>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msgBacklog', $pb.PbFieldType.OU6, protoName: 'msgBacklog', defaultOrMaker: $fixnum.Int64.ZERO)
  ;

  CommandConsumerStatsResponse._() : super();
  factory CommandConsumerStatsResponse({
    $fixnum.Int64? requestId,
    ServerError? errorCode,
    $core.String? errorMessage,
    $core.double? msgRateOut,
    $core.double? msgThroughputOut,
    $core.double? msgRateRedeliver,
    $core.String? consumerName,
    $fixnum.Int64? availablePermits,
    $fixnum.Int64? unackedMessages,
    $core.bool? blockedConsumerOnUnackedMsgs,
    $core.String? address,
    $core.String? connectedSince,
    $core.String? type,
    $core.double? msgRateExpired,
    $fixnum.Int64? msgBacklog,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (errorCode != null) {
      _result.errorCode = errorCode;
    }
    if (errorMessage != null) {
      _result.errorMessage = errorMessage;
    }
    if (msgRateOut != null) {
      _result.msgRateOut = msgRateOut;
    }
    if (msgThroughputOut != null) {
      _result.msgThroughputOut = msgThroughputOut;
    }
    if (msgRateRedeliver != null) {
      _result.msgRateRedeliver = msgRateRedeliver;
    }
    if (consumerName != null) {
      _result.consumerName = consumerName;
    }
    if (availablePermits != null) {
      _result.availablePermits = availablePermits;
    }
    if (unackedMessages != null) {
      _result.unackedMessages = unackedMessages;
    }
    if (blockedConsumerOnUnackedMsgs != null) {
      _result.blockedConsumerOnUnackedMsgs = blockedConsumerOnUnackedMsgs;
    }
    if (address != null) {
      _result.address = address;
    }
    if (connectedSince != null) {
      _result.connectedSince = connectedSince;
    }
    if (type != null) {
      _result.type = type;
    }
    if (msgRateExpired != null) {
      _result.msgRateExpired = msgRateExpired;
    }
    if (msgBacklog != null) {
      _result.msgBacklog = msgBacklog;
    }
    return _result;
  }
  factory CommandConsumerStatsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandConsumerStatsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandConsumerStatsResponse clone() => CommandConsumerStatsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandConsumerStatsResponse copyWith(void Function(CommandConsumerStatsResponse) updates) => super.copyWith((message) => updates(message as CommandConsumerStatsResponse)) as CommandConsumerStatsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandConsumerStatsResponse create() => CommandConsumerStatsResponse._();
  CommandConsumerStatsResponse createEmptyInstance() => create();
  static $pb.PbList<CommandConsumerStatsResponse> createRepeated() => $pb.PbList<CommandConsumerStatsResponse>();
  @$core.pragma('dart2js:noInline')
  static CommandConsumerStatsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandConsumerStatsResponse>(create);
  static CommandConsumerStatsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get requestId => $_getI64(0);
  @$pb.TagNumber(1)
  set requestId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  ServerError get errorCode => $_getN(1);
  @$pb.TagNumber(2)
  set errorCode(ServerError v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrorCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrorCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get errorMessage => $_getSZ(2);
  @$pb.TagNumber(3)
  set errorMessage($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasErrorMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearErrorMessage() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get msgRateOut => $_getN(3);
  @$pb.TagNumber(4)
  set msgRateOut($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMsgRateOut() => $_has(3);
  @$pb.TagNumber(4)
  void clearMsgRateOut() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get msgThroughputOut => $_getN(4);
  @$pb.TagNumber(5)
  set msgThroughputOut($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMsgThroughputOut() => $_has(4);
  @$pb.TagNumber(5)
  void clearMsgThroughputOut() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get msgRateRedeliver => $_getN(5);
  @$pb.TagNumber(6)
  set msgRateRedeliver($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMsgRateRedeliver() => $_has(5);
  @$pb.TagNumber(6)
  void clearMsgRateRedeliver() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get consumerName => $_getSZ(6);
  @$pb.TagNumber(7)
  set consumerName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasConsumerName() => $_has(6);
  @$pb.TagNumber(7)
  void clearConsumerName() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get availablePermits => $_getI64(7);
  @$pb.TagNumber(8)
  set availablePermits($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAvailablePermits() => $_has(7);
  @$pb.TagNumber(8)
  void clearAvailablePermits() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get unackedMessages => $_getI64(8);
  @$pb.TagNumber(9)
  set unackedMessages($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasUnackedMessages() => $_has(8);
  @$pb.TagNumber(9)
  void clearUnackedMessages() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get blockedConsumerOnUnackedMsgs => $_getBF(9);
  @$pb.TagNumber(10)
  set blockedConsumerOnUnackedMsgs($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasBlockedConsumerOnUnackedMsgs() => $_has(9);
  @$pb.TagNumber(10)
  void clearBlockedConsumerOnUnackedMsgs() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get address => $_getSZ(10);
  @$pb.TagNumber(11)
  set address($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasAddress() => $_has(10);
  @$pb.TagNumber(11)
  void clearAddress() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get connectedSince => $_getSZ(11);
  @$pb.TagNumber(12)
  set connectedSince($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasConnectedSince() => $_has(11);
  @$pb.TagNumber(12)
  void clearConnectedSince() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get type => $_getSZ(12);
  @$pb.TagNumber(13)
  set type($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasType() => $_has(12);
  @$pb.TagNumber(13)
  void clearType() => clearField(13);

  @$pb.TagNumber(14)
  $core.double get msgRateExpired => $_getN(13);
  @$pb.TagNumber(14)
  set msgRateExpired($core.double v) { $_setDouble(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasMsgRateExpired() => $_has(13);
  @$pb.TagNumber(14)
  void clearMsgRateExpired() => clearField(14);

  @$pb.TagNumber(15)
  $fixnum.Int64 get msgBacklog => $_getI64(14);
  @$pb.TagNumber(15)
  set msgBacklog($fixnum.Int64 v) { $_setInt64(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasMsgBacklog() => $_has(14);
  @$pb.TagNumber(15)
  void clearMsgBacklog() => clearField(15);
}

class CommandGetLastMessageId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandGetLastMessageId', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'consumerId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
  ;

  CommandGetLastMessageId._() : super();
  factory CommandGetLastMessageId({
    $fixnum.Int64? consumerId,
    $fixnum.Int64? requestId,
  }) {
    final _result = create();
    if (consumerId != null) {
      _result.consumerId = consumerId;
    }
    if (requestId != null) {
      _result.requestId = requestId;
    }
    return _result;
  }
  factory CommandGetLastMessageId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandGetLastMessageId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandGetLastMessageId clone() => CommandGetLastMessageId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandGetLastMessageId copyWith(void Function(CommandGetLastMessageId) updates) => super.copyWith((message) => updates(message as CommandGetLastMessageId)) as CommandGetLastMessageId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandGetLastMessageId create() => CommandGetLastMessageId._();
  CommandGetLastMessageId createEmptyInstance() => create();
  static $pb.PbList<CommandGetLastMessageId> createRepeated() => $pb.PbList<CommandGetLastMessageId>();
  @$core.pragma('dart2js:noInline')
  static CommandGetLastMessageId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandGetLastMessageId>(create);
  static CommandGetLastMessageId? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get consumerId => $_getI64(0);
  @$pb.TagNumber(1)
  set consumerId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConsumerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConsumerId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get requestId => $_getI64(1);
  @$pb.TagNumber(2)
  set requestId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => clearField(2);
}

class CommandGetLastMessageIdResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandGetLastMessageIdResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..aQM<MessageIdData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastMessageId', subBuilder: MessageIdData.create)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<MessageIdData>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'consumerMarkDeletePosition', subBuilder: MessageIdData.create)
  ;

  CommandGetLastMessageIdResponse._() : super();
  factory CommandGetLastMessageIdResponse({
    MessageIdData? lastMessageId,
    $fixnum.Int64? requestId,
    MessageIdData? consumerMarkDeletePosition,
  }) {
    final _result = create();
    if (lastMessageId != null) {
      _result.lastMessageId = lastMessageId;
    }
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (consumerMarkDeletePosition != null) {
      _result.consumerMarkDeletePosition = consumerMarkDeletePosition;
    }
    return _result;
  }
  factory CommandGetLastMessageIdResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandGetLastMessageIdResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandGetLastMessageIdResponse clone() => CommandGetLastMessageIdResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandGetLastMessageIdResponse copyWith(void Function(CommandGetLastMessageIdResponse) updates) => super.copyWith((message) => updates(message as CommandGetLastMessageIdResponse)) as CommandGetLastMessageIdResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandGetLastMessageIdResponse create() => CommandGetLastMessageIdResponse._();
  CommandGetLastMessageIdResponse createEmptyInstance() => create();
  static $pb.PbList<CommandGetLastMessageIdResponse> createRepeated() => $pb.PbList<CommandGetLastMessageIdResponse>();
  @$core.pragma('dart2js:noInline')
  static CommandGetLastMessageIdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandGetLastMessageIdResponse>(create);
  static CommandGetLastMessageIdResponse? _defaultInstance;

  @$pb.TagNumber(1)
  MessageIdData get lastMessageId => $_getN(0);
  @$pb.TagNumber(1)
  set lastMessageId(MessageIdData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLastMessageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLastMessageId() => clearField(1);
  @$pb.TagNumber(1)
  MessageIdData ensureLastMessageId() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get requestId => $_getI64(1);
  @$pb.TagNumber(2)
  set requestId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => clearField(2);

  @$pb.TagNumber(3)
  MessageIdData get consumerMarkDeletePosition => $_getN(2);
  @$pb.TagNumber(3)
  set consumerMarkDeletePosition(MessageIdData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasConsumerMarkDeletePosition() => $_has(2);
  @$pb.TagNumber(3)
  void clearConsumerMarkDeletePosition() => clearField(3);
  @$pb.TagNumber(3)
  MessageIdData ensureConsumerMarkDeletePosition() => $_ensure(2);
}

class CommandGetTopicsOfNamespace extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandGetTopicsOfNamespace', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'namespace')
    ..e<CommandGetTopicsOfNamespace_Mode>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mode', $pb.PbFieldType.OE, defaultOrMaker: CommandGetTopicsOfNamespace_Mode.PERSISTENT, valueOf: CommandGetTopicsOfNamespace_Mode.valueOf, enumValues: CommandGetTopicsOfNamespace_Mode.values)
  ;

  CommandGetTopicsOfNamespace._() : super();
  factory CommandGetTopicsOfNamespace({
    $fixnum.Int64? requestId,
    $core.String? namespace,
    CommandGetTopicsOfNamespace_Mode? mode,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (namespace != null) {
      _result.namespace = namespace;
    }
    if (mode != null) {
      _result.mode = mode;
    }
    return _result;
  }
  factory CommandGetTopicsOfNamespace.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandGetTopicsOfNamespace.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandGetTopicsOfNamespace clone() => CommandGetTopicsOfNamespace()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandGetTopicsOfNamespace copyWith(void Function(CommandGetTopicsOfNamespace) updates) => super.copyWith((message) => updates(message as CommandGetTopicsOfNamespace)) as CommandGetTopicsOfNamespace; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandGetTopicsOfNamespace create() => CommandGetTopicsOfNamespace._();
  CommandGetTopicsOfNamespace createEmptyInstance() => create();
  static $pb.PbList<CommandGetTopicsOfNamespace> createRepeated() => $pb.PbList<CommandGetTopicsOfNamespace>();
  @$core.pragma('dart2js:noInline')
  static CommandGetTopicsOfNamespace getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandGetTopicsOfNamespace>(create);
  static CommandGetTopicsOfNamespace? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get requestId => $_getI64(0);
  @$pb.TagNumber(1)
  set requestId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get namespace => $_getSZ(1);
  @$pb.TagNumber(2)
  set namespace($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNamespace() => $_has(1);
  @$pb.TagNumber(2)
  void clearNamespace() => clearField(2);

  @$pb.TagNumber(3)
  CommandGetTopicsOfNamespace_Mode get mode => $_getN(2);
  @$pb.TagNumber(3)
  set mode(CommandGetTopicsOfNamespace_Mode v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearMode() => clearField(3);
}

class CommandGetTopicsOfNamespaceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandGetTopicsOfNamespaceResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'topics')
  ;

  CommandGetTopicsOfNamespaceResponse._() : super();
  factory CommandGetTopicsOfNamespaceResponse({
    $fixnum.Int64? requestId,
    $core.Iterable<$core.String>? topics,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (topics != null) {
      _result.topics.addAll(topics);
    }
    return _result;
  }
  factory CommandGetTopicsOfNamespaceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandGetTopicsOfNamespaceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandGetTopicsOfNamespaceResponse clone() => CommandGetTopicsOfNamespaceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandGetTopicsOfNamespaceResponse copyWith(void Function(CommandGetTopicsOfNamespaceResponse) updates) => super.copyWith((message) => updates(message as CommandGetTopicsOfNamespaceResponse)) as CommandGetTopicsOfNamespaceResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandGetTopicsOfNamespaceResponse create() => CommandGetTopicsOfNamespaceResponse._();
  CommandGetTopicsOfNamespaceResponse createEmptyInstance() => create();
  static $pb.PbList<CommandGetTopicsOfNamespaceResponse> createRepeated() => $pb.PbList<CommandGetTopicsOfNamespaceResponse>();
  @$core.pragma('dart2js:noInline')
  static CommandGetTopicsOfNamespaceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandGetTopicsOfNamespaceResponse>(create);
  static CommandGetTopicsOfNamespaceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get requestId => $_getI64(0);
  @$pb.TagNumber(1)
  set requestId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get topics => $_getList(1);
}

class CommandGetSchema extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandGetSchema', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'topic')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schemaVersion', $pb.PbFieldType.OY)
  ;

  CommandGetSchema._() : super();
  factory CommandGetSchema({
    $fixnum.Int64? requestId,
    $core.String? topic,
    $core.List<$core.int>? schemaVersion,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (topic != null) {
      _result.topic = topic;
    }
    if (schemaVersion != null) {
      _result.schemaVersion = schemaVersion;
    }
    return _result;
  }
  factory CommandGetSchema.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandGetSchema.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandGetSchema clone() => CommandGetSchema()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandGetSchema copyWith(void Function(CommandGetSchema) updates) => super.copyWith((message) => updates(message as CommandGetSchema)) as CommandGetSchema; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandGetSchema create() => CommandGetSchema._();
  CommandGetSchema createEmptyInstance() => create();
  static $pb.PbList<CommandGetSchema> createRepeated() => $pb.PbList<CommandGetSchema>();
  @$core.pragma('dart2js:noInline')
  static CommandGetSchema getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandGetSchema>(create);
  static CommandGetSchema? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get requestId => $_getI64(0);
  @$pb.TagNumber(1)
  set requestId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get topic => $_getSZ(1);
  @$pb.TagNumber(2)
  set topic($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTopic() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopic() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get schemaVersion => $_getN(2);
  @$pb.TagNumber(3)
  set schemaVersion($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSchemaVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearSchemaVersion() => clearField(3);
}

class CommandGetSchemaResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandGetSchemaResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<ServerError>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errorCode', $pb.PbFieldType.OE, defaultOrMaker: ServerError.UnknownError, valueOf: ServerError.valueOf, enumValues: ServerError.values)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errorMessage')
    ..aOM<Schema>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schema', subBuilder: Schema.create)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schemaVersion', $pb.PbFieldType.OY)
  ;

  CommandGetSchemaResponse._() : super();
  factory CommandGetSchemaResponse({
    $fixnum.Int64? requestId,
    ServerError? errorCode,
    $core.String? errorMessage,
    Schema? schema,
    $core.List<$core.int>? schemaVersion,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (errorCode != null) {
      _result.errorCode = errorCode;
    }
    if (errorMessage != null) {
      _result.errorMessage = errorMessage;
    }
    if (schema != null) {
      _result.schema = schema;
    }
    if (schemaVersion != null) {
      _result.schemaVersion = schemaVersion;
    }
    return _result;
  }
  factory CommandGetSchemaResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandGetSchemaResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandGetSchemaResponse clone() => CommandGetSchemaResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandGetSchemaResponse copyWith(void Function(CommandGetSchemaResponse) updates) => super.copyWith((message) => updates(message as CommandGetSchemaResponse)) as CommandGetSchemaResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandGetSchemaResponse create() => CommandGetSchemaResponse._();
  CommandGetSchemaResponse createEmptyInstance() => create();
  static $pb.PbList<CommandGetSchemaResponse> createRepeated() => $pb.PbList<CommandGetSchemaResponse>();
  @$core.pragma('dart2js:noInline')
  static CommandGetSchemaResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandGetSchemaResponse>(create);
  static CommandGetSchemaResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get requestId => $_getI64(0);
  @$pb.TagNumber(1)
  set requestId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  ServerError get errorCode => $_getN(1);
  @$pb.TagNumber(2)
  set errorCode(ServerError v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrorCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrorCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get errorMessage => $_getSZ(2);
  @$pb.TagNumber(3)
  set errorMessage($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasErrorMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearErrorMessage() => clearField(3);

  @$pb.TagNumber(4)
  Schema get schema => $_getN(3);
  @$pb.TagNumber(4)
  set schema(Schema v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSchema() => $_has(3);
  @$pb.TagNumber(4)
  void clearSchema() => clearField(4);
  @$pb.TagNumber(4)
  Schema ensureSchema() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<$core.int> get schemaVersion => $_getN(4);
  @$pb.TagNumber(5)
  set schemaVersion($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSchemaVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearSchemaVersion() => clearField(5);
}

class CommandGetOrCreateSchema extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandGetOrCreateSchema', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'topic')
    ..aQM<Schema>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schema', subBuilder: Schema.create)
  ;

  CommandGetOrCreateSchema._() : super();
  factory CommandGetOrCreateSchema({
    $fixnum.Int64? requestId,
    $core.String? topic,
    Schema? schema,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (topic != null) {
      _result.topic = topic;
    }
    if (schema != null) {
      _result.schema = schema;
    }
    return _result;
  }
  factory CommandGetOrCreateSchema.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandGetOrCreateSchema.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandGetOrCreateSchema clone() => CommandGetOrCreateSchema()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandGetOrCreateSchema copyWith(void Function(CommandGetOrCreateSchema) updates) => super.copyWith((message) => updates(message as CommandGetOrCreateSchema)) as CommandGetOrCreateSchema; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandGetOrCreateSchema create() => CommandGetOrCreateSchema._();
  CommandGetOrCreateSchema createEmptyInstance() => create();
  static $pb.PbList<CommandGetOrCreateSchema> createRepeated() => $pb.PbList<CommandGetOrCreateSchema>();
  @$core.pragma('dart2js:noInline')
  static CommandGetOrCreateSchema getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandGetOrCreateSchema>(create);
  static CommandGetOrCreateSchema? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get requestId => $_getI64(0);
  @$pb.TagNumber(1)
  set requestId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get topic => $_getSZ(1);
  @$pb.TagNumber(2)
  set topic($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTopic() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopic() => clearField(2);

  @$pb.TagNumber(3)
  Schema get schema => $_getN(2);
  @$pb.TagNumber(3)
  set schema(Schema v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSchema() => $_has(2);
  @$pb.TagNumber(3)
  void clearSchema() => clearField(3);
  @$pb.TagNumber(3)
  Schema ensureSchema() => $_ensure(2);
}

class CommandGetOrCreateSchemaResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandGetOrCreateSchemaResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<ServerError>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errorCode', $pb.PbFieldType.OE, defaultOrMaker: ServerError.UnknownError, valueOf: ServerError.valueOf, enumValues: ServerError.values)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errorMessage')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schemaVersion', $pb.PbFieldType.OY)
  ;

  CommandGetOrCreateSchemaResponse._() : super();
  factory CommandGetOrCreateSchemaResponse({
    $fixnum.Int64? requestId,
    ServerError? errorCode,
    $core.String? errorMessage,
    $core.List<$core.int>? schemaVersion,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (errorCode != null) {
      _result.errorCode = errorCode;
    }
    if (errorMessage != null) {
      _result.errorMessage = errorMessage;
    }
    if (schemaVersion != null) {
      _result.schemaVersion = schemaVersion;
    }
    return _result;
  }
  factory CommandGetOrCreateSchemaResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandGetOrCreateSchemaResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandGetOrCreateSchemaResponse clone() => CommandGetOrCreateSchemaResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandGetOrCreateSchemaResponse copyWith(void Function(CommandGetOrCreateSchemaResponse) updates) => super.copyWith((message) => updates(message as CommandGetOrCreateSchemaResponse)) as CommandGetOrCreateSchemaResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandGetOrCreateSchemaResponse create() => CommandGetOrCreateSchemaResponse._();
  CommandGetOrCreateSchemaResponse createEmptyInstance() => create();
  static $pb.PbList<CommandGetOrCreateSchemaResponse> createRepeated() => $pb.PbList<CommandGetOrCreateSchemaResponse>();
  @$core.pragma('dart2js:noInline')
  static CommandGetOrCreateSchemaResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandGetOrCreateSchemaResponse>(create);
  static CommandGetOrCreateSchemaResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get requestId => $_getI64(0);
  @$pb.TagNumber(1)
  set requestId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  ServerError get errorCode => $_getN(1);
  @$pb.TagNumber(2)
  set errorCode(ServerError v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrorCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrorCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get errorMessage => $_getSZ(2);
  @$pb.TagNumber(3)
  set errorMessage($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasErrorMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearErrorMessage() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get schemaVersion => $_getN(3);
  @$pb.TagNumber(4)
  set schemaVersion($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSchemaVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearSchemaVersion() => clearField(4);
}

class CommandNewTxn extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandNewTxn', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnTtlSeconds', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tcId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
  ;

  CommandNewTxn._() : super();
  factory CommandNewTxn({
    $fixnum.Int64? requestId,
    $fixnum.Int64? txnTtlSeconds,
    $fixnum.Int64? tcId,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (txnTtlSeconds != null) {
      _result.txnTtlSeconds = txnTtlSeconds;
    }
    if (tcId != null) {
      _result.tcId = tcId;
    }
    return _result;
  }
  factory CommandNewTxn.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandNewTxn.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandNewTxn clone() => CommandNewTxn()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandNewTxn copyWith(void Function(CommandNewTxn) updates) => super.copyWith((message) => updates(message as CommandNewTxn)) as CommandNewTxn; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandNewTxn create() => CommandNewTxn._();
  CommandNewTxn createEmptyInstance() => create();
  static $pb.PbList<CommandNewTxn> createRepeated() => $pb.PbList<CommandNewTxn>();
  @$core.pragma('dart2js:noInline')
  static CommandNewTxn getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandNewTxn>(create);
  static CommandNewTxn? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get requestId => $_getI64(0);
  @$pb.TagNumber(1)
  set requestId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get txnTtlSeconds => $_getI64(1);
  @$pb.TagNumber(2)
  set txnTtlSeconds($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxnTtlSeconds() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxnTtlSeconds() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get tcId => $_getI64(2);
  @$pb.TagNumber(3)
  set tcId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTcId() => $_has(2);
  @$pb.TagNumber(3)
  void clearTcId() => clearField(3);
}

class CommandNewTxnResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandNewTxnResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidLeastBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidMostBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<ServerError>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', $pb.PbFieldType.OE, defaultOrMaker: ServerError.UnknownError, valueOf: ServerError.valueOf, enumValues: ServerError.values)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
  ;

  CommandNewTxnResponse._() : super();
  factory CommandNewTxnResponse({
    $fixnum.Int64? requestId,
    $fixnum.Int64? txnidLeastBits,
    $fixnum.Int64? txnidMostBits,
    ServerError? error,
    $core.String? message,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (txnidLeastBits != null) {
      _result.txnidLeastBits = txnidLeastBits;
    }
    if (txnidMostBits != null) {
      _result.txnidMostBits = txnidMostBits;
    }
    if (error != null) {
      _result.error = error;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory CommandNewTxnResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandNewTxnResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandNewTxnResponse clone() => CommandNewTxnResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandNewTxnResponse copyWith(void Function(CommandNewTxnResponse) updates) => super.copyWith((message) => updates(message as CommandNewTxnResponse)) as CommandNewTxnResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandNewTxnResponse create() => CommandNewTxnResponse._();
  CommandNewTxnResponse createEmptyInstance() => create();
  static $pb.PbList<CommandNewTxnResponse> createRepeated() => $pb.PbList<CommandNewTxnResponse>();
  @$core.pragma('dart2js:noInline')
  static CommandNewTxnResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandNewTxnResponse>(create);
  static CommandNewTxnResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get requestId => $_getI64(0);
  @$pb.TagNumber(1)
  set requestId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get txnidLeastBits => $_getI64(1);
  @$pb.TagNumber(2)
  set txnidLeastBits($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxnidLeastBits() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxnidLeastBits() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get txnidMostBits => $_getI64(2);
  @$pb.TagNumber(3)
  set txnidMostBits($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTxnidMostBits() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxnidMostBits() => clearField(3);

  @$pb.TagNumber(4)
  ServerError get error => $_getN(3);
  @$pb.TagNumber(4)
  set error(ServerError v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasError() => $_has(3);
  @$pb.TagNumber(4)
  void clearError() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get message => $_getSZ(4);
  @$pb.TagNumber(5)
  set message($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessage() => clearField(5);
}

class CommandAddPartitionToTxn extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandAddPartitionToTxn', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidLeastBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidMostBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'partitions')
  ;

  CommandAddPartitionToTxn._() : super();
  factory CommandAddPartitionToTxn({
    $fixnum.Int64? requestId,
    $fixnum.Int64? txnidLeastBits,
    $fixnum.Int64? txnidMostBits,
    $core.Iterable<$core.String>? partitions,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (txnidLeastBits != null) {
      _result.txnidLeastBits = txnidLeastBits;
    }
    if (txnidMostBits != null) {
      _result.txnidMostBits = txnidMostBits;
    }
    if (partitions != null) {
      _result.partitions.addAll(partitions);
    }
    return _result;
  }
  factory CommandAddPartitionToTxn.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandAddPartitionToTxn.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandAddPartitionToTxn clone() => CommandAddPartitionToTxn()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandAddPartitionToTxn copyWith(void Function(CommandAddPartitionToTxn) updates) => super.copyWith((message) => updates(message as CommandAddPartitionToTxn)) as CommandAddPartitionToTxn; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandAddPartitionToTxn create() => CommandAddPartitionToTxn._();
  CommandAddPartitionToTxn createEmptyInstance() => create();
  static $pb.PbList<CommandAddPartitionToTxn> createRepeated() => $pb.PbList<CommandAddPartitionToTxn>();
  @$core.pragma('dart2js:noInline')
  static CommandAddPartitionToTxn getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandAddPartitionToTxn>(create);
  static CommandAddPartitionToTxn? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get requestId => $_getI64(0);
  @$pb.TagNumber(1)
  set requestId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get txnidLeastBits => $_getI64(1);
  @$pb.TagNumber(2)
  set txnidLeastBits($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxnidLeastBits() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxnidLeastBits() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get txnidMostBits => $_getI64(2);
  @$pb.TagNumber(3)
  set txnidMostBits($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTxnidMostBits() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxnidMostBits() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get partitions => $_getList(3);
}

class CommandAddPartitionToTxnResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandAddPartitionToTxnResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidLeastBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidMostBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<ServerError>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', $pb.PbFieldType.OE, defaultOrMaker: ServerError.UnknownError, valueOf: ServerError.valueOf, enumValues: ServerError.values)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
  ;

  CommandAddPartitionToTxnResponse._() : super();
  factory CommandAddPartitionToTxnResponse({
    $fixnum.Int64? requestId,
    $fixnum.Int64? txnidLeastBits,
    $fixnum.Int64? txnidMostBits,
    ServerError? error,
    $core.String? message,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (txnidLeastBits != null) {
      _result.txnidLeastBits = txnidLeastBits;
    }
    if (txnidMostBits != null) {
      _result.txnidMostBits = txnidMostBits;
    }
    if (error != null) {
      _result.error = error;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory CommandAddPartitionToTxnResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandAddPartitionToTxnResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandAddPartitionToTxnResponse clone() => CommandAddPartitionToTxnResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandAddPartitionToTxnResponse copyWith(void Function(CommandAddPartitionToTxnResponse) updates) => super.copyWith((message) => updates(message as CommandAddPartitionToTxnResponse)) as CommandAddPartitionToTxnResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandAddPartitionToTxnResponse create() => CommandAddPartitionToTxnResponse._();
  CommandAddPartitionToTxnResponse createEmptyInstance() => create();
  static $pb.PbList<CommandAddPartitionToTxnResponse> createRepeated() => $pb.PbList<CommandAddPartitionToTxnResponse>();
  @$core.pragma('dart2js:noInline')
  static CommandAddPartitionToTxnResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandAddPartitionToTxnResponse>(create);
  static CommandAddPartitionToTxnResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get requestId => $_getI64(0);
  @$pb.TagNumber(1)
  set requestId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get txnidLeastBits => $_getI64(1);
  @$pb.TagNumber(2)
  set txnidLeastBits($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxnidLeastBits() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxnidLeastBits() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get txnidMostBits => $_getI64(2);
  @$pb.TagNumber(3)
  set txnidMostBits($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTxnidMostBits() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxnidMostBits() => clearField(3);

  @$pb.TagNumber(4)
  ServerError get error => $_getN(3);
  @$pb.TagNumber(4)
  set error(ServerError v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasError() => $_has(3);
  @$pb.TagNumber(4)
  void clearError() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get message => $_getSZ(4);
  @$pb.TagNumber(5)
  set message($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessage() => clearField(5);
}

class Subscription extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Subscription', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'topic')
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscription')
  ;

  Subscription._() : super();
  factory Subscription({
    $core.String? topic,
    $core.String? subscription,
  }) {
    final _result = create();
    if (topic != null) {
      _result.topic = topic;
    }
    if (subscription != null) {
      _result.subscription = subscription;
    }
    return _result;
  }
  factory Subscription.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Subscription.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Subscription clone() => Subscription()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Subscription copyWith(void Function(Subscription) updates) => super.copyWith((message) => updates(message as Subscription)) as Subscription; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Subscription create() => Subscription._();
  Subscription createEmptyInstance() => create();
  static $pb.PbList<Subscription> createRepeated() => $pb.PbList<Subscription>();
  @$core.pragma('dart2js:noInline')
  static Subscription getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Subscription>(create);
  static Subscription? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get topic => $_getSZ(0);
  @$pb.TagNumber(1)
  set topic($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTopic() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopic() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get subscription => $_getSZ(1);
  @$pb.TagNumber(2)
  set subscription($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubscription() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubscription() => clearField(2);
}

class CommandAddSubscriptionToTxn extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandAddSubscriptionToTxn', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidLeastBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidMostBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<Subscription>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscription', $pb.PbFieldType.PM, subBuilder: Subscription.create)
  ;

  CommandAddSubscriptionToTxn._() : super();
  factory CommandAddSubscriptionToTxn({
    $fixnum.Int64? requestId,
    $fixnum.Int64? txnidLeastBits,
    $fixnum.Int64? txnidMostBits,
    $core.Iterable<Subscription>? subscription,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (txnidLeastBits != null) {
      _result.txnidLeastBits = txnidLeastBits;
    }
    if (txnidMostBits != null) {
      _result.txnidMostBits = txnidMostBits;
    }
    if (subscription != null) {
      _result.subscription.addAll(subscription);
    }
    return _result;
  }
  factory CommandAddSubscriptionToTxn.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandAddSubscriptionToTxn.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandAddSubscriptionToTxn clone() => CommandAddSubscriptionToTxn()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandAddSubscriptionToTxn copyWith(void Function(CommandAddSubscriptionToTxn) updates) => super.copyWith((message) => updates(message as CommandAddSubscriptionToTxn)) as CommandAddSubscriptionToTxn; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandAddSubscriptionToTxn create() => CommandAddSubscriptionToTxn._();
  CommandAddSubscriptionToTxn createEmptyInstance() => create();
  static $pb.PbList<CommandAddSubscriptionToTxn> createRepeated() => $pb.PbList<CommandAddSubscriptionToTxn>();
  @$core.pragma('dart2js:noInline')
  static CommandAddSubscriptionToTxn getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandAddSubscriptionToTxn>(create);
  static CommandAddSubscriptionToTxn? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get requestId => $_getI64(0);
  @$pb.TagNumber(1)
  set requestId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get txnidLeastBits => $_getI64(1);
  @$pb.TagNumber(2)
  set txnidLeastBits($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxnidLeastBits() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxnidLeastBits() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get txnidMostBits => $_getI64(2);
  @$pb.TagNumber(3)
  set txnidMostBits($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTxnidMostBits() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxnidMostBits() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<Subscription> get subscription => $_getList(3);
}

class CommandAddSubscriptionToTxnResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandAddSubscriptionToTxnResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidLeastBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidMostBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<ServerError>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', $pb.PbFieldType.OE, defaultOrMaker: ServerError.UnknownError, valueOf: ServerError.valueOf, enumValues: ServerError.values)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
  ;

  CommandAddSubscriptionToTxnResponse._() : super();
  factory CommandAddSubscriptionToTxnResponse({
    $fixnum.Int64? requestId,
    $fixnum.Int64? txnidLeastBits,
    $fixnum.Int64? txnidMostBits,
    ServerError? error,
    $core.String? message,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (txnidLeastBits != null) {
      _result.txnidLeastBits = txnidLeastBits;
    }
    if (txnidMostBits != null) {
      _result.txnidMostBits = txnidMostBits;
    }
    if (error != null) {
      _result.error = error;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory CommandAddSubscriptionToTxnResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandAddSubscriptionToTxnResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandAddSubscriptionToTxnResponse clone() => CommandAddSubscriptionToTxnResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandAddSubscriptionToTxnResponse copyWith(void Function(CommandAddSubscriptionToTxnResponse) updates) => super.copyWith((message) => updates(message as CommandAddSubscriptionToTxnResponse)) as CommandAddSubscriptionToTxnResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandAddSubscriptionToTxnResponse create() => CommandAddSubscriptionToTxnResponse._();
  CommandAddSubscriptionToTxnResponse createEmptyInstance() => create();
  static $pb.PbList<CommandAddSubscriptionToTxnResponse> createRepeated() => $pb.PbList<CommandAddSubscriptionToTxnResponse>();
  @$core.pragma('dart2js:noInline')
  static CommandAddSubscriptionToTxnResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandAddSubscriptionToTxnResponse>(create);
  static CommandAddSubscriptionToTxnResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get requestId => $_getI64(0);
  @$pb.TagNumber(1)
  set requestId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get txnidLeastBits => $_getI64(1);
  @$pb.TagNumber(2)
  set txnidLeastBits($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxnidLeastBits() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxnidLeastBits() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get txnidMostBits => $_getI64(2);
  @$pb.TagNumber(3)
  set txnidMostBits($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTxnidMostBits() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxnidMostBits() => clearField(3);

  @$pb.TagNumber(4)
  ServerError get error => $_getN(3);
  @$pb.TagNumber(4)
  set error(ServerError v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasError() => $_has(3);
  @$pb.TagNumber(4)
  void clearError() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get message => $_getSZ(4);
  @$pb.TagNumber(5)
  set message($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessage() => clearField(5);
}

class CommandEndTxn extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandEndTxn', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidLeastBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidMostBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<TxnAction>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnAction', $pb.PbFieldType.OE, defaultOrMaker: TxnAction.COMMIT, valueOf: TxnAction.valueOf, enumValues: TxnAction.values)
  ;

  CommandEndTxn._() : super();
  factory CommandEndTxn({
    $fixnum.Int64? requestId,
    $fixnum.Int64? txnidLeastBits,
    $fixnum.Int64? txnidMostBits,
    TxnAction? txnAction,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (txnidLeastBits != null) {
      _result.txnidLeastBits = txnidLeastBits;
    }
    if (txnidMostBits != null) {
      _result.txnidMostBits = txnidMostBits;
    }
    if (txnAction != null) {
      _result.txnAction = txnAction;
    }
    return _result;
  }
  factory CommandEndTxn.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandEndTxn.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandEndTxn clone() => CommandEndTxn()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandEndTxn copyWith(void Function(CommandEndTxn) updates) => super.copyWith((message) => updates(message as CommandEndTxn)) as CommandEndTxn; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandEndTxn create() => CommandEndTxn._();
  CommandEndTxn createEmptyInstance() => create();
  static $pb.PbList<CommandEndTxn> createRepeated() => $pb.PbList<CommandEndTxn>();
  @$core.pragma('dart2js:noInline')
  static CommandEndTxn getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandEndTxn>(create);
  static CommandEndTxn? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get requestId => $_getI64(0);
  @$pb.TagNumber(1)
  set requestId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get txnidLeastBits => $_getI64(1);
  @$pb.TagNumber(2)
  set txnidLeastBits($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxnidLeastBits() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxnidLeastBits() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get txnidMostBits => $_getI64(2);
  @$pb.TagNumber(3)
  set txnidMostBits($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTxnidMostBits() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxnidMostBits() => clearField(3);

  @$pb.TagNumber(4)
  TxnAction get txnAction => $_getN(3);
  @$pb.TagNumber(4)
  set txnAction(TxnAction v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTxnAction() => $_has(3);
  @$pb.TagNumber(4)
  void clearTxnAction() => clearField(4);
}

class CommandEndTxnResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandEndTxnResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidLeastBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidMostBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<ServerError>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', $pb.PbFieldType.OE, defaultOrMaker: ServerError.UnknownError, valueOf: ServerError.valueOf, enumValues: ServerError.values)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
  ;

  CommandEndTxnResponse._() : super();
  factory CommandEndTxnResponse({
    $fixnum.Int64? requestId,
    $fixnum.Int64? txnidLeastBits,
    $fixnum.Int64? txnidMostBits,
    ServerError? error,
    $core.String? message,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (txnidLeastBits != null) {
      _result.txnidLeastBits = txnidLeastBits;
    }
    if (txnidMostBits != null) {
      _result.txnidMostBits = txnidMostBits;
    }
    if (error != null) {
      _result.error = error;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory CommandEndTxnResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandEndTxnResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandEndTxnResponse clone() => CommandEndTxnResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandEndTxnResponse copyWith(void Function(CommandEndTxnResponse) updates) => super.copyWith((message) => updates(message as CommandEndTxnResponse)) as CommandEndTxnResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandEndTxnResponse create() => CommandEndTxnResponse._();
  CommandEndTxnResponse createEmptyInstance() => create();
  static $pb.PbList<CommandEndTxnResponse> createRepeated() => $pb.PbList<CommandEndTxnResponse>();
  @$core.pragma('dart2js:noInline')
  static CommandEndTxnResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandEndTxnResponse>(create);
  static CommandEndTxnResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get requestId => $_getI64(0);
  @$pb.TagNumber(1)
  set requestId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get txnidLeastBits => $_getI64(1);
  @$pb.TagNumber(2)
  set txnidLeastBits($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxnidLeastBits() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxnidLeastBits() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get txnidMostBits => $_getI64(2);
  @$pb.TagNumber(3)
  set txnidMostBits($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTxnidMostBits() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxnidMostBits() => clearField(3);

  @$pb.TagNumber(4)
  ServerError get error => $_getN(3);
  @$pb.TagNumber(4)
  set error(ServerError v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasError() => $_has(3);
  @$pb.TagNumber(4)
  void clearError() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get message => $_getSZ(4);
  @$pb.TagNumber(5)
  set message($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessage() => clearField(5);
}

class CommandEndTxnOnPartition extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandEndTxnOnPartition', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidLeastBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidMostBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'topic')
    ..e<TxnAction>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnAction', $pb.PbFieldType.OE, defaultOrMaker: TxnAction.COMMIT, valueOf: TxnAction.valueOf, enumValues: TxnAction.values)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidLeastBitsOfLowWatermark', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
  ;

  CommandEndTxnOnPartition._() : super();
  factory CommandEndTxnOnPartition({
    $fixnum.Int64? requestId,
    $fixnum.Int64? txnidLeastBits,
    $fixnum.Int64? txnidMostBits,
    $core.String? topic,
    TxnAction? txnAction,
    $fixnum.Int64? txnidLeastBitsOfLowWatermark,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (txnidLeastBits != null) {
      _result.txnidLeastBits = txnidLeastBits;
    }
    if (txnidMostBits != null) {
      _result.txnidMostBits = txnidMostBits;
    }
    if (topic != null) {
      _result.topic = topic;
    }
    if (txnAction != null) {
      _result.txnAction = txnAction;
    }
    if (txnidLeastBitsOfLowWatermark != null) {
      _result.txnidLeastBitsOfLowWatermark = txnidLeastBitsOfLowWatermark;
    }
    return _result;
  }
  factory CommandEndTxnOnPartition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandEndTxnOnPartition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandEndTxnOnPartition clone() => CommandEndTxnOnPartition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandEndTxnOnPartition copyWith(void Function(CommandEndTxnOnPartition) updates) => super.copyWith((message) => updates(message as CommandEndTxnOnPartition)) as CommandEndTxnOnPartition; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandEndTxnOnPartition create() => CommandEndTxnOnPartition._();
  CommandEndTxnOnPartition createEmptyInstance() => create();
  static $pb.PbList<CommandEndTxnOnPartition> createRepeated() => $pb.PbList<CommandEndTxnOnPartition>();
  @$core.pragma('dart2js:noInline')
  static CommandEndTxnOnPartition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandEndTxnOnPartition>(create);
  static CommandEndTxnOnPartition? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get requestId => $_getI64(0);
  @$pb.TagNumber(1)
  set requestId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get txnidLeastBits => $_getI64(1);
  @$pb.TagNumber(2)
  set txnidLeastBits($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxnidLeastBits() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxnidLeastBits() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get txnidMostBits => $_getI64(2);
  @$pb.TagNumber(3)
  set txnidMostBits($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTxnidMostBits() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxnidMostBits() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get topic => $_getSZ(3);
  @$pb.TagNumber(4)
  set topic($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTopic() => $_has(3);
  @$pb.TagNumber(4)
  void clearTopic() => clearField(4);

  @$pb.TagNumber(5)
  TxnAction get txnAction => $_getN(4);
  @$pb.TagNumber(5)
  set txnAction(TxnAction v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasTxnAction() => $_has(4);
  @$pb.TagNumber(5)
  void clearTxnAction() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get txnidLeastBitsOfLowWatermark => $_getI64(5);
  @$pb.TagNumber(6)
  set txnidLeastBitsOfLowWatermark($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTxnidLeastBitsOfLowWatermark() => $_has(5);
  @$pb.TagNumber(6)
  void clearTxnidLeastBitsOfLowWatermark() => clearField(6);
}

class CommandEndTxnOnPartitionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandEndTxnOnPartitionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidLeastBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidMostBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<ServerError>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', $pb.PbFieldType.OE, defaultOrMaker: ServerError.UnknownError, valueOf: ServerError.valueOf, enumValues: ServerError.values)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
  ;

  CommandEndTxnOnPartitionResponse._() : super();
  factory CommandEndTxnOnPartitionResponse({
    $fixnum.Int64? requestId,
    $fixnum.Int64? txnidLeastBits,
    $fixnum.Int64? txnidMostBits,
    ServerError? error,
    $core.String? message,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (txnidLeastBits != null) {
      _result.txnidLeastBits = txnidLeastBits;
    }
    if (txnidMostBits != null) {
      _result.txnidMostBits = txnidMostBits;
    }
    if (error != null) {
      _result.error = error;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory CommandEndTxnOnPartitionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandEndTxnOnPartitionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandEndTxnOnPartitionResponse clone() => CommandEndTxnOnPartitionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandEndTxnOnPartitionResponse copyWith(void Function(CommandEndTxnOnPartitionResponse) updates) => super.copyWith((message) => updates(message as CommandEndTxnOnPartitionResponse)) as CommandEndTxnOnPartitionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandEndTxnOnPartitionResponse create() => CommandEndTxnOnPartitionResponse._();
  CommandEndTxnOnPartitionResponse createEmptyInstance() => create();
  static $pb.PbList<CommandEndTxnOnPartitionResponse> createRepeated() => $pb.PbList<CommandEndTxnOnPartitionResponse>();
  @$core.pragma('dart2js:noInline')
  static CommandEndTxnOnPartitionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandEndTxnOnPartitionResponse>(create);
  static CommandEndTxnOnPartitionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get requestId => $_getI64(0);
  @$pb.TagNumber(1)
  set requestId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get txnidLeastBits => $_getI64(1);
  @$pb.TagNumber(2)
  set txnidLeastBits($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxnidLeastBits() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxnidLeastBits() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get txnidMostBits => $_getI64(2);
  @$pb.TagNumber(3)
  set txnidMostBits($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTxnidMostBits() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxnidMostBits() => clearField(3);

  @$pb.TagNumber(4)
  ServerError get error => $_getN(3);
  @$pb.TagNumber(4)
  set error(ServerError v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasError() => $_has(3);
  @$pb.TagNumber(4)
  void clearError() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get message => $_getSZ(4);
  @$pb.TagNumber(5)
  set message($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessage() => clearField(5);
}

class CommandEndTxnOnSubscription extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandEndTxnOnSubscription', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidLeastBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidMostBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<Subscription>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscription', subBuilder: Subscription.create)
    ..e<TxnAction>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnAction', $pb.PbFieldType.OE, defaultOrMaker: TxnAction.COMMIT, valueOf: TxnAction.valueOf, enumValues: TxnAction.values)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidLeastBitsOfLowWatermark', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
  ;

  CommandEndTxnOnSubscription._() : super();
  factory CommandEndTxnOnSubscription({
    $fixnum.Int64? requestId,
    $fixnum.Int64? txnidLeastBits,
    $fixnum.Int64? txnidMostBits,
    Subscription? subscription,
    TxnAction? txnAction,
    $fixnum.Int64? txnidLeastBitsOfLowWatermark,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (txnidLeastBits != null) {
      _result.txnidLeastBits = txnidLeastBits;
    }
    if (txnidMostBits != null) {
      _result.txnidMostBits = txnidMostBits;
    }
    if (subscription != null) {
      _result.subscription = subscription;
    }
    if (txnAction != null) {
      _result.txnAction = txnAction;
    }
    if (txnidLeastBitsOfLowWatermark != null) {
      _result.txnidLeastBitsOfLowWatermark = txnidLeastBitsOfLowWatermark;
    }
    return _result;
  }
  factory CommandEndTxnOnSubscription.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandEndTxnOnSubscription.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandEndTxnOnSubscription clone() => CommandEndTxnOnSubscription()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandEndTxnOnSubscription copyWith(void Function(CommandEndTxnOnSubscription) updates) => super.copyWith((message) => updates(message as CommandEndTxnOnSubscription)) as CommandEndTxnOnSubscription; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandEndTxnOnSubscription create() => CommandEndTxnOnSubscription._();
  CommandEndTxnOnSubscription createEmptyInstance() => create();
  static $pb.PbList<CommandEndTxnOnSubscription> createRepeated() => $pb.PbList<CommandEndTxnOnSubscription>();
  @$core.pragma('dart2js:noInline')
  static CommandEndTxnOnSubscription getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandEndTxnOnSubscription>(create);
  static CommandEndTxnOnSubscription? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get requestId => $_getI64(0);
  @$pb.TagNumber(1)
  set requestId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get txnidLeastBits => $_getI64(1);
  @$pb.TagNumber(2)
  set txnidLeastBits($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxnidLeastBits() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxnidLeastBits() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get txnidMostBits => $_getI64(2);
  @$pb.TagNumber(3)
  set txnidMostBits($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTxnidMostBits() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxnidMostBits() => clearField(3);

  @$pb.TagNumber(4)
  Subscription get subscription => $_getN(3);
  @$pb.TagNumber(4)
  set subscription(Subscription v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSubscription() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubscription() => clearField(4);
  @$pb.TagNumber(4)
  Subscription ensureSubscription() => $_ensure(3);

  @$pb.TagNumber(5)
  TxnAction get txnAction => $_getN(4);
  @$pb.TagNumber(5)
  set txnAction(TxnAction v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasTxnAction() => $_has(4);
  @$pb.TagNumber(5)
  void clearTxnAction() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get txnidLeastBitsOfLowWatermark => $_getI64(5);
  @$pb.TagNumber(6)
  set txnidLeastBitsOfLowWatermark($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTxnidLeastBitsOfLowWatermark() => $_has(5);
  @$pb.TagNumber(6)
  void clearTxnidLeastBitsOfLowWatermark() => clearField(6);
}

class CommandEndTxnOnSubscriptionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandEndTxnOnSubscriptionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidLeastBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnidMostBits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<ServerError>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', $pb.PbFieldType.OE, defaultOrMaker: ServerError.UnknownError, valueOf: ServerError.valueOf, enumValues: ServerError.values)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
  ;

  CommandEndTxnOnSubscriptionResponse._() : super();
  factory CommandEndTxnOnSubscriptionResponse({
    $fixnum.Int64? requestId,
    $fixnum.Int64? txnidLeastBits,
    $fixnum.Int64? txnidMostBits,
    ServerError? error,
    $core.String? message,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (txnidLeastBits != null) {
      _result.txnidLeastBits = txnidLeastBits;
    }
    if (txnidMostBits != null) {
      _result.txnidMostBits = txnidMostBits;
    }
    if (error != null) {
      _result.error = error;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory CommandEndTxnOnSubscriptionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandEndTxnOnSubscriptionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandEndTxnOnSubscriptionResponse clone() => CommandEndTxnOnSubscriptionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandEndTxnOnSubscriptionResponse copyWith(void Function(CommandEndTxnOnSubscriptionResponse) updates) => super.copyWith((message) => updates(message as CommandEndTxnOnSubscriptionResponse)) as CommandEndTxnOnSubscriptionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandEndTxnOnSubscriptionResponse create() => CommandEndTxnOnSubscriptionResponse._();
  CommandEndTxnOnSubscriptionResponse createEmptyInstance() => create();
  static $pb.PbList<CommandEndTxnOnSubscriptionResponse> createRepeated() => $pb.PbList<CommandEndTxnOnSubscriptionResponse>();
  @$core.pragma('dart2js:noInline')
  static CommandEndTxnOnSubscriptionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandEndTxnOnSubscriptionResponse>(create);
  static CommandEndTxnOnSubscriptionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get requestId => $_getI64(0);
  @$pb.TagNumber(1)
  set requestId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get txnidLeastBits => $_getI64(1);
  @$pb.TagNumber(2)
  set txnidLeastBits($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxnidLeastBits() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxnidLeastBits() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get txnidMostBits => $_getI64(2);
  @$pb.TagNumber(3)
  set txnidMostBits($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTxnidMostBits() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxnidMostBits() => clearField(3);

  @$pb.TagNumber(4)
  ServerError get error => $_getN(3);
  @$pb.TagNumber(4)
  set error(ServerError v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasError() => $_has(3);
  @$pb.TagNumber(4)
  void clearError() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get message => $_getSZ(4);
  @$pb.TagNumber(5)
  set message($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessage() => clearField(5);
}

class BaseCommand extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BaseCommand', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pulsar.proto'), createEmptyInstance: create)
    ..e<BaseCommand_Type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.QE, defaultOrMaker: BaseCommand_Type.CONNECT, valueOf: BaseCommand_Type.valueOf, enumValues: BaseCommand_Type.values)
    ..aOM<CommandConnect>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connect', subBuilder: CommandConnect.create)
    ..aOM<CommandConnected>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connected', subBuilder: CommandConnected.create)
    ..aOM<CommandSubscribe>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscribe', subBuilder: CommandSubscribe.create)
    ..aOM<CommandProducer>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'producer', subBuilder: CommandProducer.create)
    ..aOM<CommandSend>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'send', subBuilder: CommandSend.create)
    ..aOM<CommandSendReceipt>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sendReceipt', subBuilder: CommandSendReceipt.create)
    ..aOM<CommandSendError>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sendError', subBuilder: CommandSendError.create)
    ..aOM<CommandMessage>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message', subBuilder: CommandMessage.create)
    ..aOM<CommandAck>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ack', subBuilder: CommandAck.create)
    ..aOM<CommandFlow>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'flow', subBuilder: CommandFlow.create)
    ..aOM<CommandUnsubscribe>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unsubscribe', subBuilder: CommandUnsubscribe.create)
    ..aOM<CommandSuccess>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success', subBuilder: CommandSuccess.create)
    ..aOM<CommandError>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: CommandError.create)
    ..aOM<CommandCloseProducer>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'closeProducer', subBuilder: CommandCloseProducer.create)
    ..aOM<CommandCloseConsumer>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'closeConsumer', subBuilder: CommandCloseConsumer.create)
    ..aOM<CommandProducerSuccess>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'producerSuccess', subBuilder: CommandProducerSuccess.create)
    ..aOM<CommandPing>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ping', subBuilder: CommandPing.create)
    ..aOM<CommandPong>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pong', subBuilder: CommandPong.create)
    ..aOM<CommandRedeliverUnacknowledgedMessages>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'redeliverUnacknowledgedMessages', protoName: 'redeliverUnacknowledgedMessages', subBuilder: CommandRedeliverUnacknowledgedMessages.create)
    ..aOM<CommandPartitionedTopicMetadata>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'partitionMetadata', protoName: 'partitionMetadata', subBuilder: CommandPartitionedTopicMetadata.create)
    ..aOM<CommandPartitionedTopicMetadataResponse>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'partitionMetadataResponse', protoName: 'partitionMetadataResponse', subBuilder: CommandPartitionedTopicMetadataResponse.create)
    ..aOM<CommandLookupTopic>(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lookupTopic', protoName: 'lookupTopic', subBuilder: CommandLookupTopic.create)
    ..aOM<CommandLookupTopicResponse>(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lookupTopicResponse', protoName: 'lookupTopicResponse', subBuilder: CommandLookupTopicResponse.create)
    ..aOM<CommandConsumerStats>(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'consumerStats', protoName: 'consumerStats', subBuilder: CommandConsumerStats.create)
    ..aOM<CommandConsumerStatsResponse>(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'consumerStatsResponse', protoName: 'consumerStatsResponse', subBuilder: CommandConsumerStatsResponse.create)
    ..aOM<CommandReachedEndOfTopic>(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reachedEndOfTopic', protoName: 'reachedEndOfTopic', subBuilder: CommandReachedEndOfTopic.create)
    ..aOM<CommandSeek>(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'seek', subBuilder: CommandSeek.create)
    ..aOM<CommandGetLastMessageId>(29, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getLastMessageId', protoName: 'getLastMessageId', subBuilder: CommandGetLastMessageId.create)
    ..aOM<CommandGetLastMessageIdResponse>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getLastMessageIdResponse', protoName: 'getLastMessageIdResponse', subBuilder: CommandGetLastMessageIdResponse.create)
    ..aOM<CommandActiveConsumerChange>(31, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'activeConsumerChange', subBuilder: CommandActiveConsumerChange.create)
    ..aOM<CommandGetTopicsOfNamespace>(32, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getTopicsOfNamespace', protoName: 'getTopicsOfNamespace', subBuilder: CommandGetTopicsOfNamespace.create)
    ..aOM<CommandGetTopicsOfNamespaceResponse>(33, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getTopicsOfNamespaceResponse', protoName: 'getTopicsOfNamespaceResponse', subBuilder: CommandGetTopicsOfNamespaceResponse.create)
    ..aOM<CommandGetSchema>(34, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getSchema', protoName: 'getSchema', subBuilder: CommandGetSchema.create)
    ..aOM<CommandGetSchemaResponse>(35, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getSchemaResponse', protoName: 'getSchemaResponse', subBuilder: CommandGetSchemaResponse.create)
    ..aOM<CommandAuthChallenge>(36, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authChallenge', protoName: 'authChallenge', subBuilder: CommandAuthChallenge.create)
    ..aOM<CommandAuthResponse>(37, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authResponse', protoName: 'authResponse', subBuilder: CommandAuthResponse.create)
    ..aOM<CommandAckResponse>(38, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ackResponse', protoName: 'ackResponse', subBuilder: CommandAckResponse.create)
    ..aOM<CommandGetOrCreateSchema>(39, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getOrCreateSchema', protoName: 'getOrCreateSchema', subBuilder: CommandGetOrCreateSchema.create)
    ..aOM<CommandGetOrCreateSchemaResponse>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getOrCreateSchemaResponse', protoName: 'getOrCreateSchemaResponse', subBuilder: CommandGetOrCreateSchemaResponse.create)
    ..aOM<CommandNewTxn>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'newTxn', protoName: 'newTxn', subBuilder: CommandNewTxn.create)
    ..aOM<CommandNewTxnResponse>(51, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'newTxnResponse', protoName: 'newTxnResponse', subBuilder: CommandNewTxnResponse.create)
    ..aOM<CommandAddPartitionToTxn>(52, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addPartitionToTxn', protoName: 'addPartitionToTxn', subBuilder: CommandAddPartitionToTxn.create)
    ..aOM<CommandAddPartitionToTxnResponse>(53, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addPartitionToTxnResponse', protoName: 'addPartitionToTxnResponse', subBuilder: CommandAddPartitionToTxnResponse.create)
    ..aOM<CommandAddSubscriptionToTxn>(54, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addSubscriptionToTxn', protoName: 'addSubscriptionToTxn', subBuilder: CommandAddSubscriptionToTxn.create)
    ..aOM<CommandAddSubscriptionToTxnResponse>(55, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addSubscriptionToTxnResponse', protoName: 'addSubscriptionToTxnResponse', subBuilder: CommandAddSubscriptionToTxnResponse.create)
    ..aOM<CommandEndTxn>(56, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endTxn', protoName: 'endTxn', subBuilder: CommandEndTxn.create)
    ..aOM<CommandEndTxnResponse>(57, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endTxnResponse', protoName: 'endTxnResponse', subBuilder: CommandEndTxnResponse.create)
    ..aOM<CommandEndTxnOnPartition>(58, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endTxnOnPartition', protoName: 'endTxnOnPartition', subBuilder: CommandEndTxnOnPartition.create)
    ..aOM<CommandEndTxnOnPartitionResponse>(59, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endTxnOnPartitionResponse', protoName: 'endTxnOnPartitionResponse', subBuilder: CommandEndTxnOnPartitionResponse.create)
    ..aOM<CommandEndTxnOnSubscription>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endTxnOnSubscription', protoName: 'endTxnOnSubscription', subBuilder: CommandEndTxnOnSubscription.create)
    ..aOM<CommandEndTxnOnSubscriptionResponse>(61, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endTxnOnSubscriptionResponse', protoName: 'endTxnOnSubscriptionResponse', subBuilder: CommandEndTxnOnSubscriptionResponse.create)
  ;

  BaseCommand._() : super();
  factory BaseCommand({
    BaseCommand_Type? type,
    CommandConnect? connect,
    CommandConnected? connected,
    CommandSubscribe? subscribe,
    CommandProducer? producer,
    CommandSend? send,
    CommandSendReceipt? sendReceipt,
    CommandSendError? sendError,
    CommandMessage? message,
    CommandAck? ack,
    CommandFlow? flow,
    CommandUnsubscribe? unsubscribe,
    CommandSuccess? success,
    CommandError? error,
    CommandCloseProducer? closeProducer,
    CommandCloseConsumer? closeConsumer,
    CommandProducerSuccess? producerSuccess,
    CommandPing? ping,
    CommandPong? pong,
    CommandRedeliverUnacknowledgedMessages? redeliverUnacknowledgedMessages,
    CommandPartitionedTopicMetadata? partitionMetadata,
    CommandPartitionedTopicMetadataResponse? partitionMetadataResponse,
    CommandLookupTopic? lookupTopic,
    CommandLookupTopicResponse? lookupTopicResponse,
    CommandConsumerStats? consumerStats,
    CommandConsumerStatsResponse? consumerStatsResponse,
    CommandReachedEndOfTopic? reachedEndOfTopic,
    CommandSeek? seek,
    CommandGetLastMessageId? getLastMessageId,
    CommandGetLastMessageIdResponse? getLastMessageIdResponse,
    CommandActiveConsumerChange? activeConsumerChange,
    CommandGetTopicsOfNamespace? getTopicsOfNamespace,
    CommandGetTopicsOfNamespaceResponse? getTopicsOfNamespaceResponse,
    CommandGetSchema? getSchema,
    CommandGetSchemaResponse? getSchemaResponse,
    CommandAuthChallenge? authChallenge,
    CommandAuthResponse? authResponse,
    CommandAckResponse? ackResponse,
    CommandGetOrCreateSchema? getOrCreateSchema,
    CommandGetOrCreateSchemaResponse? getOrCreateSchemaResponse,
    CommandNewTxn? newTxn,
    CommandNewTxnResponse? newTxnResponse,
    CommandAddPartitionToTxn? addPartitionToTxn,
    CommandAddPartitionToTxnResponse? addPartitionToTxnResponse,
    CommandAddSubscriptionToTxn? addSubscriptionToTxn,
    CommandAddSubscriptionToTxnResponse? addSubscriptionToTxnResponse,
    CommandEndTxn? endTxn,
    CommandEndTxnResponse? endTxnResponse,
    CommandEndTxnOnPartition? endTxnOnPartition,
    CommandEndTxnOnPartitionResponse? endTxnOnPartitionResponse,
    CommandEndTxnOnSubscription? endTxnOnSubscription,
    CommandEndTxnOnSubscriptionResponse? endTxnOnSubscriptionResponse,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (connect != null) {
      _result.connect = connect;
    }
    if (connected != null) {
      _result.connected = connected;
    }
    if (subscribe != null) {
      _result.subscribe = subscribe;
    }
    if (producer != null) {
      _result.producer = producer;
    }
    if (send != null) {
      _result.send = send;
    }
    if (sendReceipt != null) {
      _result.sendReceipt = sendReceipt;
    }
    if (sendError != null) {
      _result.sendError = sendError;
    }
    if (message != null) {
      _result.message = message;
    }
    if (ack != null) {
      _result.ack = ack;
    }
    if (flow != null) {
      _result.flow = flow;
    }
    if (unsubscribe != null) {
      _result.unsubscribe = unsubscribe;
    }
    if (success != null) {
      _result.success = success;
    }
    if (error != null) {
      _result.error = error;
    }
    if (closeProducer != null) {
      _result.closeProducer = closeProducer;
    }
    if (closeConsumer != null) {
      _result.closeConsumer = closeConsumer;
    }
    if (producerSuccess != null) {
      _result.producerSuccess = producerSuccess;
    }
    if (ping != null) {
      _result.ping = ping;
    }
    if (pong != null) {
      _result.pong = pong;
    }
    if (redeliverUnacknowledgedMessages != null) {
      _result.redeliverUnacknowledgedMessages = redeliverUnacknowledgedMessages;
    }
    if (partitionMetadata != null) {
      _result.partitionMetadata = partitionMetadata;
    }
    if (partitionMetadataResponse != null) {
      _result.partitionMetadataResponse = partitionMetadataResponse;
    }
    if (lookupTopic != null) {
      _result.lookupTopic = lookupTopic;
    }
    if (lookupTopicResponse != null) {
      _result.lookupTopicResponse = lookupTopicResponse;
    }
    if (consumerStats != null) {
      _result.consumerStats = consumerStats;
    }
    if (consumerStatsResponse != null) {
      _result.consumerStatsResponse = consumerStatsResponse;
    }
    if (reachedEndOfTopic != null) {
      _result.reachedEndOfTopic = reachedEndOfTopic;
    }
    if (seek != null) {
      _result.seek = seek;
    }
    if (getLastMessageId != null) {
      _result.getLastMessageId = getLastMessageId;
    }
    if (getLastMessageIdResponse != null) {
      _result.getLastMessageIdResponse = getLastMessageIdResponse;
    }
    if (activeConsumerChange != null) {
      _result.activeConsumerChange = activeConsumerChange;
    }
    if (getTopicsOfNamespace != null) {
      _result.getTopicsOfNamespace = getTopicsOfNamespace;
    }
    if (getTopicsOfNamespaceResponse != null) {
      _result.getTopicsOfNamespaceResponse = getTopicsOfNamespaceResponse;
    }
    if (getSchema != null) {
      _result.getSchema = getSchema;
    }
    if (getSchemaResponse != null) {
      _result.getSchemaResponse = getSchemaResponse;
    }
    if (authChallenge != null) {
      _result.authChallenge = authChallenge;
    }
    if (authResponse != null) {
      _result.authResponse = authResponse;
    }
    if (ackResponse != null) {
      _result.ackResponse = ackResponse;
    }
    if (getOrCreateSchema != null) {
      _result.getOrCreateSchema = getOrCreateSchema;
    }
    if (getOrCreateSchemaResponse != null) {
      _result.getOrCreateSchemaResponse = getOrCreateSchemaResponse;
    }
    if (newTxn != null) {
      _result.newTxn = newTxn;
    }
    if (newTxnResponse != null) {
      _result.newTxnResponse = newTxnResponse;
    }
    if (addPartitionToTxn != null) {
      _result.addPartitionToTxn = addPartitionToTxn;
    }
    if (addPartitionToTxnResponse != null) {
      _result.addPartitionToTxnResponse = addPartitionToTxnResponse;
    }
    if (addSubscriptionToTxn != null) {
      _result.addSubscriptionToTxn = addSubscriptionToTxn;
    }
    if (addSubscriptionToTxnResponse != null) {
      _result.addSubscriptionToTxnResponse = addSubscriptionToTxnResponse;
    }
    if (endTxn != null) {
      _result.endTxn = endTxn;
    }
    if (endTxnResponse != null) {
      _result.endTxnResponse = endTxnResponse;
    }
    if (endTxnOnPartition != null) {
      _result.endTxnOnPartition = endTxnOnPartition;
    }
    if (endTxnOnPartitionResponse != null) {
      _result.endTxnOnPartitionResponse = endTxnOnPartitionResponse;
    }
    if (endTxnOnSubscription != null) {
      _result.endTxnOnSubscription = endTxnOnSubscription;
    }
    if (endTxnOnSubscriptionResponse != null) {
      _result.endTxnOnSubscriptionResponse = endTxnOnSubscriptionResponse;
    }
    return _result;
  }
  factory BaseCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BaseCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BaseCommand clone() => BaseCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BaseCommand copyWith(void Function(BaseCommand) updates) => super.copyWith((message) => updates(message as BaseCommand)) as BaseCommand; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BaseCommand create() => BaseCommand._();
  BaseCommand createEmptyInstance() => create();
  static $pb.PbList<BaseCommand> createRepeated() => $pb.PbList<BaseCommand>();
  @$core.pragma('dart2js:noInline')
  static BaseCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BaseCommand>(create);
  static BaseCommand? _defaultInstance;

  @$pb.TagNumber(1)
  BaseCommand_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(BaseCommand_Type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  CommandConnect get connect => $_getN(1);
  @$pb.TagNumber(2)
  set connect(CommandConnect v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConnect() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnect() => clearField(2);
  @$pb.TagNumber(2)
  CommandConnect ensureConnect() => $_ensure(1);

  @$pb.TagNumber(3)
  CommandConnected get connected => $_getN(2);
  @$pb.TagNumber(3)
  set connected(CommandConnected v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasConnected() => $_has(2);
  @$pb.TagNumber(3)
  void clearConnected() => clearField(3);
  @$pb.TagNumber(3)
  CommandConnected ensureConnected() => $_ensure(2);

  @$pb.TagNumber(4)
  CommandSubscribe get subscribe => $_getN(3);
  @$pb.TagNumber(4)
  set subscribe(CommandSubscribe v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSubscribe() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubscribe() => clearField(4);
  @$pb.TagNumber(4)
  CommandSubscribe ensureSubscribe() => $_ensure(3);

  @$pb.TagNumber(5)
  CommandProducer get producer => $_getN(4);
  @$pb.TagNumber(5)
  set producer(CommandProducer v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasProducer() => $_has(4);
  @$pb.TagNumber(5)
  void clearProducer() => clearField(5);
  @$pb.TagNumber(5)
  CommandProducer ensureProducer() => $_ensure(4);

  @$pb.TagNumber(6)
  CommandSend get send => $_getN(5);
  @$pb.TagNumber(6)
  set send(CommandSend v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasSend() => $_has(5);
  @$pb.TagNumber(6)
  void clearSend() => clearField(6);
  @$pb.TagNumber(6)
  CommandSend ensureSend() => $_ensure(5);

  @$pb.TagNumber(7)
  CommandSendReceipt get sendReceipt => $_getN(6);
  @$pb.TagNumber(7)
  set sendReceipt(CommandSendReceipt v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSendReceipt() => $_has(6);
  @$pb.TagNumber(7)
  void clearSendReceipt() => clearField(7);
  @$pb.TagNumber(7)
  CommandSendReceipt ensureSendReceipt() => $_ensure(6);

  @$pb.TagNumber(8)
  CommandSendError get sendError => $_getN(7);
  @$pb.TagNumber(8)
  set sendError(CommandSendError v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasSendError() => $_has(7);
  @$pb.TagNumber(8)
  void clearSendError() => clearField(8);
  @$pb.TagNumber(8)
  CommandSendError ensureSendError() => $_ensure(7);

  @$pb.TagNumber(9)
  CommandMessage get message => $_getN(8);
  @$pb.TagNumber(9)
  set message(CommandMessage v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasMessage() => $_has(8);
  @$pb.TagNumber(9)
  void clearMessage() => clearField(9);
  @$pb.TagNumber(9)
  CommandMessage ensureMessage() => $_ensure(8);

  @$pb.TagNumber(10)
  CommandAck get ack => $_getN(9);
  @$pb.TagNumber(10)
  set ack(CommandAck v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasAck() => $_has(9);
  @$pb.TagNumber(10)
  void clearAck() => clearField(10);
  @$pb.TagNumber(10)
  CommandAck ensureAck() => $_ensure(9);

  @$pb.TagNumber(11)
  CommandFlow get flow => $_getN(10);
  @$pb.TagNumber(11)
  set flow(CommandFlow v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasFlow() => $_has(10);
  @$pb.TagNumber(11)
  void clearFlow() => clearField(11);
  @$pb.TagNumber(11)
  CommandFlow ensureFlow() => $_ensure(10);

  @$pb.TagNumber(12)
  CommandUnsubscribe get unsubscribe => $_getN(11);
  @$pb.TagNumber(12)
  set unsubscribe(CommandUnsubscribe v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasUnsubscribe() => $_has(11);
  @$pb.TagNumber(12)
  void clearUnsubscribe() => clearField(12);
  @$pb.TagNumber(12)
  CommandUnsubscribe ensureUnsubscribe() => $_ensure(11);

  @$pb.TagNumber(13)
  CommandSuccess get success => $_getN(12);
  @$pb.TagNumber(13)
  set success(CommandSuccess v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasSuccess() => $_has(12);
  @$pb.TagNumber(13)
  void clearSuccess() => clearField(13);
  @$pb.TagNumber(13)
  CommandSuccess ensureSuccess() => $_ensure(12);

  @$pb.TagNumber(14)
  CommandError get error => $_getN(13);
  @$pb.TagNumber(14)
  set error(CommandError v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasError() => $_has(13);
  @$pb.TagNumber(14)
  void clearError() => clearField(14);
  @$pb.TagNumber(14)
  CommandError ensureError() => $_ensure(13);

  @$pb.TagNumber(15)
  CommandCloseProducer get closeProducer => $_getN(14);
  @$pb.TagNumber(15)
  set closeProducer(CommandCloseProducer v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasCloseProducer() => $_has(14);
  @$pb.TagNumber(15)
  void clearCloseProducer() => clearField(15);
  @$pb.TagNumber(15)
  CommandCloseProducer ensureCloseProducer() => $_ensure(14);

  @$pb.TagNumber(16)
  CommandCloseConsumer get closeConsumer => $_getN(15);
  @$pb.TagNumber(16)
  set closeConsumer(CommandCloseConsumer v) { setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasCloseConsumer() => $_has(15);
  @$pb.TagNumber(16)
  void clearCloseConsumer() => clearField(16);
  @$pb.TagNumber(16)
  CommandCloseConsumer ensureCloseConsumer() => $_ensure(15);

  @$pb.TagNumber(17)
  CommandProducerSuccess get producerSuccess => $_getN(16);
  @$pb.TagNumber(17)
  set producerSuccess(CommandProducerSuccess v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasProducerSuccess() => $_has(16);
  @$pb.TagNumber(17)
  void clearProducerSuccess() => clearField(17);
  @$pb.TagNumber(17)
  CommandProducerSuccess ensureProducerSuccess() => $_ensure(16);

  @$pb.TagNumber(18)
  CommandPing get ping => $_getN(17);
  @$pb.TagNumber(18)
  set ping(CommandPing v) { setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasPing() => $_has(17);
  @$pb.TagNumber(18)
  void clearPing() => clearField(18);
  @$pb.TagNumber(18)
  CommandPing ensurePing() => $_ensure(17);

  @$pb.TagNumber(19)
  CommandPong get pong => $_getN(18);
  @$pb.TagNumber(19)
  set pong(CommandPong v) { setField(19, v); }
  @$pb.TagNumber(19)
  $core.bool hasPong() => $_has(18);
  @$pb.TagNumber(19)
  void clearPong() => clearField(19);
  @$pb.TagNumber(19)
  CommandPong ensurePong() => $_ensure(18);

  @$pb.TagNumber(20)
  CommandRedeliverUnacknowledgedMessages get redeliverUnacknowledgedMessages => $_getN(19);
  @$pb.TagNumber(20)
  set redeliverUnacknowledgedMessages(CommandRedeliverUnacknowledgedMessages v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasRedeliverUnacknowledgedMessages() => $_has(19);
  @$pb.TagNumber(20)
  void clearRedeliverUnacknowledgedMessages() => clearField(20);
  @$pb.TagNumber(20)
  CommandRedeliverUnacknowledgedMessages ensureRedeliverUnacknowledgedMessages() => $_ensure(19);

  @$pb.TagNumber(21)
  CommandPartitionedTopicMetadata get partitionMetadata => $_getN(20);
  @$pb.TagNumber(21)
  set partitionMetadata(CommandPartitionedTopicMetadata v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasPartitionMetadata() => $_has(20);
  @$pb.TagNumber(21)
  void clearPartitionMetadata() => clearField(21);
  @$pb.TagNumber(21)
  CommandPartitionedTopicMetadata ensurePartitionMetadata() => $_ensure(20);

  @$pb.TagNumber(22)
  CommandPartitionedTopicMetadataResponse get partitionMetadataResponse => $_getN(21);
  @$pb.TagNumber(22)
  set partitionMetadataResponse(CommandPartitionedTopicMetadataResponse v) { setField(22, v); }
  @$pb.TagNumber(22)
  $core.bool hasPartitionMetadataResponse() => $_has(21);
  @$pb.TagNumber(22)
  void clearPartitionMetadataResponse() => clearField(22);
  @$pb.TagNumber(22)
  CommandPartitionedTopicMetadataResponse ensurePartitionMetadataResponse() => $_ensure(21);

  @$pb.TagNumber(23)
  CommandLookupTopic get lookupTopic => $_getN(22);
  @$pb.TagNumber(23)
  set lookupTopic(CommandLookupTopic v) { setField(23, v); }
  @$pb.TagNumber(23)
  $core.bool hasLookupTopic() => $_has(22);
  @$pb.TagNumber(23)
  void clearLookupTopic() => clearField(23);
  @$pb.TagNumber(23)
  CommandLookupTopic ensureLookupTopic() => $_ensure(22);

  @$pb.TagNumber(24)
  CommandLookupTopicResponse get lookupTopicResponse => $_getN(23);
  @$pb.TagNumber(24)
  set lookupTopicResponse(CommandLookupTopicResponse v) { setField(24, v); }
  @$pb.TagNumber(24)
  $core.bool hasLookupTopicResponse() => $_has(23);
  @$pb.TagNumber(24)
  void clearLookupTopicResponse() => clearField(24);
  @$pb.TagNumber(24)
  CommandLookupTopicResponse ensureLookupTopicResponse() => $_ensure(23);

  @$pb.TagNumber(25)
  CommandConsumerStats get consumerStats => $_getN(24);
  @$pb.TagNumber(25)
  set consumerStats(CommandConsumerStats v) { setField(25, v); }
  @$pb.TagNumber(25)
  $core.bool hasConsumerStats() => $_has(24);
  @$pb.TagNumber(25)
  void clearConsumerStats() => clearField(25);
  @$pb.TagNumber(25)
  CommandConsumerStats ensureConsumerStats() => $_ensure(24);

  @$pb.TagNumber(26)
  CommandConsumerStatsResponse get consumerStatsResponse => $_getN(25);
  @$pb.TagNumber(26)
  set consumerStatsResponse(CommandConsumerStatsResponse v) { setField(26, v); }
  @$pb.TagNumber(26)
  $core.bool hasConsumerStatsResponse() => $_has(25);
  @$pb.TagNumber(26)
  void clearConsumerStatsResponse() => clearField(26);
  @$pb.TagNumber(26)
  CommandConsumerStatsResponse ensureConsumerStatsResponse() => $_ensure(25);

  @$pb.TagNumber(27)
  CommandReachedEndOfTopic get reachedEndOfTopic => $_getN(26);
  @$pb.TagNumber(27)
  set reachedEndOfTopic(CommandReachedEndOfTopic v) { setField(27, v); }
  @$pb.TagNumber(27)
  $core.bool hasReachedEndOfTopic() => $_has(26);
  @$pb.TagNumber(27)
  void clearReachedEndOfTopic() => clearField(27);
  @$pb.TagNumber(27)
  CommandReachedEndOfTopic ensureReachedEndOfTopic() => $_ensure(26);

  @$pb.TagNumber(28)
  CommandSeek get seek => $_getN(27);
  @$pb.TagNumber(28)
  set seek(CommandSeek v) { setField(28, v); }
  @$pb.TagNumber(28)
  $core.bool hasSeek() => $_has(27);
  @$pb.TagNumber(28)
  void clearSeek() => clearField(28);
  @$pb.TagNumber(28)
  CommandSeek ensureSeek() => $_ensure(27);

  @$pb.TagNumber(29)
  CommandGetLastMessageId get getLastMessageId => $_getN(28);
  @$pb.TagNumber(29)
  set getLastMessageId(CommandGetLastMessageId v) { setField(29, v); }
  @$pb.TagNumber(29)
  $core.bool hasGetLastMessageId() => $_has(28);
  @$pb.TagNumber(29)
  void clearGetLastMessageId() => clearField(29);
  @$pb.TagNumber(29)
  CommandGetLastMessageId ensureGetLastMessageId() => $_ensure(28);

  @$pb.TagNumber(30)
  CommandGetLastMessageIdResponse get getLastMessageIdResponse => $_getN(29);
  @$pb.TagNumber(30)
  set getLastMessageIdResponse(CommandGetLastMessageIdResponse v) { setField(30, v); }
  @$pb.TagNumber(30)
  $core.bool hasGetLastMessageIdResponse() => $_has(29);
  @$pb.TagNumber(30)
  void clearGetLastMessageIdResponse() => clearField(30);
  @$pb.TagNumber(30)
  CommandGetLastMessageIdResponse ensureGetLastMessageIdResponse() => $_ensure(29);

  @$pb.TagNumber(31)
  CommandActiveConsumerChange get activeConsumerChange => $_getN(30);
  @$pb.TagNumber(31)
  set activeConsumerChange(CommandActiveConsumerChange v) { setField(31, v); }
  @$pb.TagNumber(31)
  $core.bool hasActiveConsumerChange() => $_has(30);
  @$pb.TagNumber(31)
  void clearActiveConsumerChange() => clearField(31);
  @$pb.TagNumber(31)
  CommandActiveConsumerChange ensureActiveConsumerChange() => $_ensure(30);

  @$pb.TagNumber(32)
  CommandGetTopicsOfNamespace get getTopicsOfNamespace => $_getN(31);
  @$pb.TagNumber(32)
  set getTopicsOfNamespace(CommandGetTopicsOfNamespace v) { setField(32, v); }
  @$pb.TagNumber(32)
  $core.bool hasGetTopicsOfNamespace() => $_has(31);
  @$pb.TagNumber(32)
  void clearGetTopicsOfNamespace() => clearField(32);
  @$pb.TagNumber(32)
  CommandGetTopicsOfNamespace ensureGetTopicsOfNamespace() => $_ensure(31);

  @$pb.TagNumber(33)
  CommandGetTopicsOfNamespaceResponse get getTopicsOfNamespaceResponse => $_getN(32);
  @$pb.TagNumber(33)
  set getTopicsOfNamespaceResponse(CommandGetTopicsOfNamespaceResponse v) { setField(33, v); }
  @$pb.TagNumber(33)
  $core.bool hasGetTopicsOfNamespaceResponse() => $_has(32);
  @$pb.TagNumber(33)
  void clearGetTopicsOfNamespaceResponse() => clearField(33);
  @$pb.TagNumber(33)
  CommandGetTopicsOfNamespaceResponse ensureGetTopicsOfNamespaceResponse() => $_ensure(32);

  @$pb.TagNumber(34)
  CommandGetSchema get getSchema => $_getN(33);
  @$pb.TagNumber(34)
  set getSchema(CommandGetSchema v) { setField(34, v); }
  @$pb.TagNumber(34)
  $core.bool hasGetSchema() => $_has(33);
  @$pb.TagNumber(34)
  void clearGetSchema() => clearField(34);
  @$pb.TagNumber(34)
  CommandGetSchema ensureGetSchema() => $_ensure(33);

  @$pb.TagNumber(35)
  CommandGetSchemaResponse get getSchemaResponse => $_getN(34);
  @$pb.TagNumber(35)
  set getSchemaResponse(CommandGetSchemaResponse v) { setField(35, v); }
  @$pb.TagNumber(35)
  $core.bool hasGetSchemaResponse() => $_has(34);
  @$pb.TagNumber(35)
  void clearGetSchemaResponse() => clearField(35);
  @$pb.TagNumber(35)
  CommandGetSchemaResponse ensureGetSchemaResponse() => $_ensure(34);

  @$pb.TagNumber(36)
  CommandAuthChallenge get authChallenge => $_getN(35);
  @$pb.TagNumber(36)
  set authChallenge(CommandAuthChallenge v) { setField(36, v); }
  @$pb.TagNumber(36)
  $core.bool hasAuthChallenge() => $_has(35);
  @$pb.TagNumber(36)
  void clearAuthChallenge() => clearField(36);
  @$pb.TagNumber(36)
  CommandAuthChallenge ensureAuthChallenge() => $_ensure(35);

  @$pb.TagNumber(37)
  CommandAuthResponse get authResponse => $_getN(36);
  @$pb.TagNumber(37)
  set authResponse(CommandAuthResponse v) { setField(37, v); }
  @$pb.TagNumber(37)
  $core.bool hasAuthResponse() => $_has(36);
  @$pb.TagNumber(37)
  void clearAuthResponse() => clearField(37);
  @$pb.TagNumber(37)
  CommandAuthResponse ensureAuthResponse() => $_ensure(36);

  @$pb.TagNumber(38)
  CommandAckResponse get ackResponse => $_getN(37);
  @$pb.TagNumber(38)
  set ackResponse(CommandAckResponse v) { setField(38, v); }
  @$pb.TagNumber(38)
  $core.bool hasAckResponse() => $_has(37);
  @$pb.TagNumber(38)
  void clearAckResponse() => clearField(38);
  @$pb.TagNumber(38)
  CommandAckResponse ensureAckResponse() => $_ensure(37);

  @$pb.TagNumber(39)
  CommandGetOrCreateSchema get getOrCreateSchema => $_getN(38);
  @$pb.TagNumber(39)
  set getOrCreateSchema(CommandGetOrCreateSchema v) { setField(39, v); }
  @$pb.TagNumber(39)
  $core.bool hasGetOrCreateSchema() => $_has(38);
  @$pb.TagNumber(39)
  void clearGetOrCreateSchema() => clearField(39);
  @$pb.TagNumber(39)
  CommandGetOrCreateSchema ensureGetOrCreateSchema() => $_ensure(38);

  @$pb.TagNumber(40)
  CommandGetOrCreateSchemaResponse get getOrCreateSchemaResponse => $_getN(39);
  @$pb.TagNumber(40)
  set getOrCreateSchemaResponse(CommandGetOrCreateSchemaResponse v) { setField(40, v); }
  @$pb.TagNumber(40)
  $core.bool hasGetOrCreateSchemaResponse() => $_has(39);
  @$pb.TagNumber(40)
  void clearGetOrCreateSchemaResponse() => clearField(40);
  @$pb.TagNumber(40)
  CommandGetOrCreateSchemaResponse ensureGetOrCreateSchemaResponse() => $_ensure(39);

  @$pb.TagNumber(50)
  CommandNewTxn get newTxn => $_getN(40);
  @$pb.TagNumber(50)
  set newTxn(CommandNewTxn v) { setField(50, v); }
  @$pb.TagNumber(50)
  $core.bool hasNewTxn() => $_has(40);
  @$pb.TagNumber(50)
  void clearNewTxn() => clearField(50);
  @$pb.TagNumber(50)
  CommandNewTxn ensureNewTxn() => $_ensure(40);

  @$pb.TagNumber(51)
  CommandNewTxnResponse get newTxnResponse => $_getN(41);
  @$pb.TagNumber(51)
  set newTxnResponse(CommandNewTxnResponse v) { setField(51, v); }
  @$pb.TagNumber(51)
  $core.bool hasNewTxnResponse() => $_has(41);
  @$pb.TagNumber(51)
  void clearNewTxnResponse() => clearField(51);
  @$pb.TagNumber(51)
  CommandNewTxnResponse ensureNewTxnResponse() => $_ensure(41);

  @$pb.TagNumber(52)
  CommandAddPartitionToTxn get addPartitionToTxn => $_getN(42);
  @$pb.TagNumber(52)
  set addPartitionToTxn(CommandAddPartitionToTxn v) { setField(52, v); }
  @$pb.TagNumber(52)
  $core.bool hasAddPartitionToTxn() => $_has(42);
  @$pb.TagNumber(52)
  void clearAddPartitionToTxn() => clearField(52);
  @$pb.TagNumber(52)
  CommandAddPartitionToTxn ensureAddPartitionToTxn() => $_ensure(42);

  @$pb.TagNumber(53)
  CommandAddPartitionToTxnResponse get addPartitionToTxnResponse => $_getN(43);
  @$pb.TagNumber(53)
  set addPartitionToTxnResponse(CommandAddPartitionToTxnResponse v) { setField(53, v); }
  @$pb.TagNumber(53)
  $core.bool hasAddPartitionToTxnResponse() => $_has(43);
  @$pb.TagNumber(53)
  void clearAddPartitionToTxnResponse() => clearField(53);
  @$pb.TagNumber(53)
  CommandAddPartitionToTxnResponse ensureAddPartitionToTxnResponse() => $_ensure(43);

  @$pb.TagNumber(54)
  CommandAddSubscriptionToTxn get addSubscriptionToTxn => $_getN(44);
  @$pb.TagNumber(54)
  set addSubscriptionToTxn(CommandAddSubscriptionToTxn v) { setField(54, v); }
  @$pb.TagNumber(54)
  $core.bool hasAddSubscriptionToTxn() => $_has(44);
  @$pb.TagNumber(54)
  void clearAddSubscriptionToTxn() => clearField(54);
  @$pb.TagNumber(54)
  CommandAddSubscriptionToTxn ensureAddSubscriptionToTxn() => $_ensure(44);

  @$pb.TagNumber(55)
  CommandAddSubscriptionToTxnResponse get addSubscriptionToTxnResponse => $_getN(45);
  @$pb.TagNumber(55)
  set addSubscriptionToTxnResponse(CommandAddSubscriptionToTxnResponse v) { setField(55, v); }
  @$pb.TagNumber(55)
  $core.bool hasAddSubscriptionToTxnResponse() => $_has(45);
  @$pb.TagNumber(55)
  void clearAddSubscriptionToTxnResponse() => clearField(55);
  @$pb.TagNumber(55)
  CommandAddSubscriptionToTxnResponse ensureAddSubscriptionToTxnResponse() => $_ensure(45);

  @$pb.TagNumber(56)
  CommandEndTxn get endTxn => $_getN(46);
  @$pb.TagNumber(56)
  set endTxn(CommandEndTxn v) { setField(56, v); }
  @$pb.TagNumber(56)
  $core.bool hasEndTxn() => $_has(46);
  @$pb.TagNumber(56)
  void clearEndTxn() => clearField(56);
  @$pb.TagNumber(56)
  CommandEndTxn ensureEndTxn() => $_ensure(46);

  @$pb.TagNumber(57)
  CommandEndTxnResponse get endTxnResponse => $_getN(47);
  @$pb.TagNumber(57)
  set endTxnResponse(CommandEndTxnResponse v) { setField(57, v); }
  @$pb.TagNumber(57)
  $core.bool hasEndTxnResponse() => $_has(47);
  @$pb.TagNumber(57)
  void clearEndTxnResponse() => clearField(57);
  @$pb.TagNumber(57)
  CommandEndTxnResponse ensureEndTxnResponse() => $_ensure(47);

  @$pb.TagNumber(58)
  CommandEndTxnOnPartition get endTxnOnPartition => $_getN(48);
  @$pb.TagNumber(58)
  set endTxnOnPartition(CommandEndTxnOnPartition v) { setField(58, v); }
  @$pb.TagNumber(58)
  $core.bool hasEndTxnOnPartition() => $_has(48);
  @$pb.TagNumber(58)
  void clearEndTxnOnPartition() => clearField(58);
  @$pb.TagNumber(58)
  CommandEndTxnOnPartition ensureEndTxnOnPartition() => $_ensure(48);

  @$pb.TagNumber(59)
  CommandEndTxnOnPartitionResponse get endTxnOnPartitionResponse => $_getN(49);
  @$pb.TagNumber(59)
  set endTxnOnPartitionResponse(CommandEndTxnOnPartitionResponse v) { setField(59, v); }
  @$pb.TagNumber(59)
  $core.bool hasEndTxnOnPartitionResponse() => $_has(49);
  @$pb.TagNumber(59)
  void clearEndTxnOnPartitionResponse() => clearField(59);
  @$pb.TagNumber(59)
  CommandEndTxnOnPartitionResponse ensureEndTxnOnPartitionResponse() => $_ensure(49);

  @$pb.TagNumber(60)
  CommandEndTxnOnSubscription get endTxnOnSubscription => $_getN(50);
  @$pb.TagNumber(60)
  set endTxnOnSubscription(CommandEndTxnOnSubscription v) { setField(60, v); }
  @$pb.TagNumber(60)
  $core.bool hasEndTxnOnSubscription() => $_has(50);
  @$pb.TagNumber(60)
  void clearEndTxnOnSubscription() => clearField(60);
  @$pb.TagNumber(60)
  CommandEndTxnOnSubscription ensureEndTxnOnSubscription() => $_ensure(50);

  @$pb.TagNumber(61)
  CommandEndTxnOnSubscriptionResponse get endTxnOnSubscriptionResponse => $_getN(51);
  @$pb.TagNumber(61)
  set endTxnOnSubscriptionResponse(CommandEndTxnOnSubscriptionResponse v) { setField(61, v); }
  @$pb.TagNumber(61)
  $core.bool hasEndTxnOnSubscriptionResponse() => $_has(51);
  @$pb.TagNumber(61)
  void clearEndTxnOnSubscriptionResponse() => clearField(61);
  @$pb.TagNumber(61)
  CommandEndTxnOnSubscriptionResponse ensureEndTxnOnSubscriptionResponse() => $_ensure(51);
}

