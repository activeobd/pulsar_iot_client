///
//  Generated code. Do not modify.
//  source: PulsarApi.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use compressionTypeDescriptor instead')
const CompressionType$json = const {
  '1': 'CompressionType',
  '2': const [
    const {'1': 'NONE', '2': 0},
    const {'1': 'LZ4', '2': 1},
    const {'1': 'ZLIB', '2': 2},
    const {'1': 'ZSTD', '2': 3},
    const {'1': 'SNAPPY', '2': 4},
  ],
};

/// Descriptor for `CompressionType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List compressionTypeDescriptor = $convert.base64Decode('Cg9Db21wcmVzc2lvblR5cGUSCAoETk9ORRAAEgcKA0xaNBABEggKBFpMSUIQAhIICgRaU1REEAMSCgoGU05BUFBZEAQ=');
@$core.Deprecated('Use producerAccessModeDescriptor instead')
const ProducerAccessMode$json = const {
  '1': 'ProducerAccessMode',
  '2': const [
    const {'1': 'Shared', '2': 0},
    const {'1': 'Exclusive', '2': 1},
    const {'1': 'WaitForExclusive', '2': 2},
  ],
};

/// Descriptor for `ProducerAccessMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List producerAccessModeDescriptor = $convert.base64Decode('ChJQcm9kdWNlckFjY2Vzc01vZGUSCgoGU2hhcmVkEAASDQoJRXhjbHVzaXZlEAESFAoQV2FpdEZvckV4Y2x1c2l2ZRAC');
@$core.Deprecated('Use serverErrorDescriptor instead')
const ServerError$json = const {
  '1': 'ServerError',
  '2': const [
    const {'1': 'UnknownError', '2': 0},
    const {'1': 'MetadataError', '2': 1},
    const {'1': 'PersistenceError', '2': 2},
    const {'1': 'AuthenticationError', '2': 3},
    const {'1': 'AuthorizationError', '2': 4},
    const {'1': 'ConsumerBusy', '2': 5},
    const {'1': 'ServiceNotReady', '2': 6},
    const {'1': 'ProducerBlockedQuotaExceededError', '2': 7},
    const {'1': 'ProducerBlockedQuotaExceededException', '2': 8},
    const {'1': 'ChecksumError', '2': 9},
    const {'1': 'UnsupportedVersionError', '2': 10},
    const {'1': 'TopicNotFound', '2': 11},
    const {'1': 'SubscriptionNotFound', '2': 12},
    const {'1': 'ConsumerNotFound', '2': 13},
    const {'1': 'TooManyRequests', '2': 14},
    const {'1': 'TopicTerminatedError', '2': 15},
    const {'1': 'ProducerBusy', '2': 16},
    const {'1': 'InvalidTopicName', '2': 17},
    const {'1': 'IncompatibleSchema', '2': 18},
    const {'1': 'ConsumerAssignError', '2': 19},
    const {'1': 'TransactionCoordinatorNotFound', '2': 20},
    const {'1': 'InvalidTxnStatus', '2': 21},
    const {'1': 'NotAllowedError', '2': 22},
    const {'1': 'TransactionConflict', '2': 23},
    const {'1': 'TransactionNotFound', '2': 24},
    const {'1': 'ProducerFenced', '2': 25},
  ],
};

/// Descriptor for `ServerError`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List serverErrorDescriptor = $convert.base64Decode('CgtTZXJ2ZXJFcnJvchIQCgxVbmtub3duRXJyb3IQABIRCg1NZXRhZGF0YUVycm9yEAESFAoQUGVyc2lzdGVuY2VFcnJvchACEhcKE0F1dGhlbnRpY2F0aW9uRXJyb3IQAxIWChJBdXRob3JpemF0aW9uRXJyb3IQBBIQCgxDb25zdW1lckJ1c3kQBRITCg9TZXJ2aWNlTm90UmVhZHkQBhIlCiFQcm9kdWNlckJsb2NrZWRRdW90YUV4Y2VlZGVkRXJyb3IQBxIpCiVQcm9kdWNlckJsb2NrZWRRdW90YUV4Y2VlZGVkRXhjZXB0aW9uEAgSEQoNQ2hlY2tzdW1FcnJvchAJEhsKF1Vuc3VwcG9ydGVkVmVyc2lvbkVycm9yEAoSEQoNVG9waWNOb3RGb3VuZBALEhgKFFN1YnNjcmlwdGlvbk5vdEZvdW5kEAwSFAoQQ29uc3VtZXJOb3RGb3VuZBANEhMKD1Rvb01hbnlSZXF1ZXN0cxAOEhgKFFRvcGljVGVybWluYXRlZEVycm9yEA8SEAoMUHJvZHVjZXJCdXN5EBASFAoQSW52YWxpZFRvcGljTmFtZRAREhYKEkluY29tcGF0aWJsZVNjaGVtYRASEhcKE0NvbnN1bWVyQXNzaWduRXJyb3IQExIiCh5UcmFuc2FjdGlvbkNvb3JkaW5hdG9yTm90Rm91bmQQFBIUChBJbnZhbGlkVHhuU3RhdHVzEBUSEwoPTm90QWxsb3dlZEVycm9yEBYSFwoTVHJhbnNhY3Rpb25Db25mbGljdBAXEhcKE1RyYW5zYWN0aW9uTm90Rm91bmQQGBISCg5Qcm9kdWNlckZlbmNlZBAZ');
@$core.Deprecated('Use authMethodDescriptor instead')
const AuthMethod$json = const {
  '1': 'AuthMethod',
  '2': const [
    const {'1': 'AuthMethodNone', '2': 0},
    const {'1': 'AuthMethodYcaV1', '2': 1},
    const {'1': 'AuthMethodAthens', '2': 2},
  ],
};

/// Descriptor for `AuthMethod`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List authMethodDescriptor = $convert.base64Decode('CgpBdXRoTWV0aG9kEhIKDkF1dGhNZXRob2ROb25lEAASEwoPQXV0aE1ldGhvZFljYVYxEAESFAoQQXV0aE1ldGhvZEF0aGVucxAC');
@$core.Deprecated('Use protocolVersionDescriptor instead')
const ProtocolVersion$json = const {
  '1': 'ProtocolVersion',
  '2': const [
    const {'1': 'v0', '2': 0},
    const {'1': 'v1', '2': 1},
    const {'1': 'v2', '2': 2},
    const {'1': 'v3', '2': 3},
    const {'1': 'v4', '2': 4},
    const {'1': 'v5', '2': 5},
    const {'1': 'v6', '2': 6},
    const {'1': 'v7', '2': 7},
    const {'1': 'v8', '2': 8},
    const {'1': 'v9', '2': 9},
    const {'1': 'v10', '2': 10},
    const {'1': 'v11', '2': 11},
    const {'1': 'v12', '2': 12},
    const {'1': 'v13', '2': 13},
    const {'1': 'v14', '2': 14},
    const {'1': 'v15', '2': 15},
    const {'1': 'v16', '2': 16},
    const {'1': 'v17', '2': 17},
  ],
};

/// Descriptor for `ProtocolVersion`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List protocolVersionDescriptor = $convert.base64Decode('Cg9Qcm90b2NvbFZlcnNpb24SBgoCdjAQABIGCgJ2MRABEgYKAnYyEAISBgoCdjMQAxIGCgJ2NBAEEgYKAnY1EAUSBgoCdjYQBhIGCgJ2NxAHEgYKAnY4EAgSBgoCdjkQCRIHCgN2MTAQChIHCgN2MTEQCxIHCgN2MTIQDBIHCgN2MTMQDRIHCgN2MTQQDhIHCgN2MTUQDxIHCgN2MTYQEBIHCgN2MTcQEQ==');
@$core.Deprecated('Use keySharedModeDescriptor instead')
const KeySharedMode$json = const {
  '1': 'KeySharedMode',
  '2': const [
    const {'1': 'AUTO_SPLIT', '2': 0},
    const {'1': 'STICKY', '2': 1},
  ],
};

/// Descriptor for `KeySharedMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List keySharedModeDescriptor = $convert.base64Decode('Cg1LZXlTaGFyZWRNb2RlEg4KCkFVVE9fU1BMSVQQABIKCgZTVElDS1kQAQ==');
@$core.Deprecated('Use txnActionDescriptor instead')
const TxnAction$json = const {
  '1': 'TxnAction',
  '2': const [
    const {'1': 'COMMIT', '2': 0},
    const {'1': 'ABORT', '2': 1},
  ],
};

/// Descriptor for `TxnAction`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List txnActionDescriptor = $convert.base64Decode('CglUeG5BY3Rpb24SCgoGQ09NTUlUEAASCQoFQUJPUlQQAQ==');
@$core.Deprecated('Use schemaDescriptor instead')
const Schema$json = const {
  '1': 'Schema',
  '2': const [
    const {'1': 'name', '3': 1, '4': 2, '5': 9, '10': 'name'},
    const {'1': 'schema_data', '3': 3, '4': 2, '5': 12, '10': 'schemaData'},
    const {'1': 'type', '3': 4, '4': 2, '5': 14, '6': '.pulsar.proto.Schema.Type', '10': 'type'},
    const {'1': 'properties', '3': 5, '4': 3, '5': 11, '6': '.pulsar.proto.KeyValue', '10': 'properties'},
  ],
  '4': const [Schema_Type$json],
};

@$core.Deprecated('Use schemaDescriptor instead')
const Schema_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'None', '2': 0},
    const {'1': 'String', '2': 1},
    const {'1': 'Json', '2': 2},
    const {'1': 'Protobuf', '2': 3},
    const {'1': 'Avro', '2': 4},
    const {'1': 'Bool', '2': 5},
    const {'1': 'Int8', '2': 6},
    const {'1': 'Int16', '2': 7},
    const {'1': 'Int32', '2': 8},
    const {'1': 'Int64', '2': 9},
    const {'1': 'Float', '2': 10},
    const {'1': 'Double', '2': 11},
    const {'1': 'Date', '2': 12},
    const {'1': 'Time', '2': 13},
    const {'1': 'Timestamp', '2': 14},
    const {'1': 'KeyValue', '2': 15},
    const {'1': 'Instant', '2': 16},
    const {'1': 'LocalDate', '2': 17},
    const {'1': 'LocalTime', '2': 18},
    const {'1': 'LocalDateTime', '2': 19},
    const {'1': 'ProtobufNative', '2': 20},
  ],
};

/// Descriptor for `Schema`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List schemaDescriptor = $convert.base64Decode('CgZTY2hlbWESEgoEbmFtZRgBIAIoCVIEbmFtZRIfCgtzY2hlbWFfZGF0YRgDIAIoDFIKc2NoZW1hRGF0YRItCgR0eXBlGAQgAigOMhkucHVsc2FyLnByb3RvLlNjaGVtYS5UeXBlUgR0eXBlEjYKCnByb3BlcnRpZXMYBSADKAsyFi5wdWxzYXIucHJvdG8uS2V5VmFsdWVSCnByb3BlcnRpZXMijQIKBFR5cGUSCAoETm9uZRAAEgoKBlN0cmluZxABEggKBEpzb24QAhIMCghQcm90b2J1ZhADEggKBEF2cm8QBBIICgRCb29sEAUSCAoESW50OBAGEgkKBUludDE2EAcSCQoFSW50MzIQCBIJCgVJbnQ2NBAJEgkKBUZsb2F0EAoSCgoGRG91YmxlEAsSCAoERGF0ZRAMEggKBFRpbWUQDRINCglUaW1lc3RhbXAQDhIMCghLZXlWYWx1ZRAPEgsKB0luc3RhbnQQEBINCglMb2NhbERhdGUQERINCglMb2NhbFRpbWUQEhIRCg1Mb2NhbERhdGVUaW1lEBMSEgoOUHJvdG9idWZOYXRpdmUQFA==');
@$core.Deprecated('Use messageIdDataDescriptor instead')
const MessageIdData$json = const {
  '1': 'MessageIdData',
  '2': const [
    const {'1': 'ledgerId', '3': 1, '4': 2, '5': 4, '10': 'ledgerId'},
    const {'1': 'entryId', '3': 2, '4': 2, '5': 4, '10': 'entryId'},
    const {'1': 'partition', '3': 3, '4': 1, '5': 5, '7': '-1', '10': 'partition'},
    const {'1': 'batch_index', '3': 4, '4': 1, '5': 5, '7': '-1', '10': 'batchIndex'},
    const {'1': 'ack_set', '3': 5, '4': 3, '5': 3, '10': 'ackSet'},
    const {'1': 'batch_size', '3': 6, '4': 1, '5': 5, '10': 'batchSize'},
  ],
};

/// Descriptor for `MessageIdData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageIdDataDescriptor = $convert.base64Decode('Cg1NZXNzYWdlSWREYXRhEhoKCGxlZGdlcklkGAEgAigEUghsZWRnZXJJZBIYCgdlbnRyeUlkGAIgAigEUgdlbnRyeUlkEiAKCXBhcnRpdGlvbhgDIAEoBToCLTFSCXBhcnRpdGlvbhIjCgtiYXRjaF9pbmRleBgEIAEoBToCLTFSCmJhdGNoSW5kZXgSFwoHYWNrX3NldBgFIAMoA1IGYWNrU2V0Eh0KCmJhdGNoX3NpemUYBiABKAVSCWJhdGNoU2l6ZQ==');
@$core.Deprecated('Use keyValueDescriptor instead')
const KeyValue$json = const {
  '1': 'KeyValue',
  '2': const [
    const {'1': 'key', '3': 1, '4': 2, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 2, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `KeyValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyValueDescriptor = $convert.base64Decode('CghLZXlWYWx1ZRIQCgNrZXkYASACKAlSA2tleRIUCgV2YWx1ZRgCIAIoCVIFdmFsdWU=');
@$core.Deprecated('Use keyLongValueDescriptor instead')
const KeyLongValue$json = const {
  '1': 'KeyLongValue',
  '2': const [
    const {'1': 'key', '3': 1, '4': 2, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 2, '5': 4, '10': 'value'},
  ],
};

/// Descriptor for `KeyLongValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyLongValueDescriptor = $convert.base64Decode('CgxLZXlMb25nVmFsdWUSEAoDa2V5GAEgAigJUgNrZXkSFAoFdmFsdWUYAiACKARSBXZhbHVl');
@$core.Deprecated('Use intRangeDescriptor instead')
const IntRange$json = const {
  '1': 'IntRange',
  '2': const [
    const {'1': 'start', '3': 1, '4': 2, '5': 5, '10': 'start'},
    const {'1': 'end', '3': 2, '4': 2, '5': 5, '10': 'end'},
  ],
};

/// Descriptor for `IntRange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List intRangeDescriptor = $convert.base64Decode('CghJbnRSYW5nZRIUCgVzdGFydBgBIAIoBVIFc3RhcnQSEAoDZW5kGAIgAigFUgNlbmQ=');
@$core.Deprecated('Use encryptionKeysDescriptor instead')
const EncryptionKeys$json = const {
  '1': 'EncryptionKeys',
  '2': const [
    const {'1': 'key', '3': 1, '4': 2, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 2, '5': 12, '10': 'value'},
    const {'1': 'metadata', '3': 3, '4': 3, '5': 11, '6': '.pulsar.proto.KeyValue', '10': 'metadata'},
  ],
};

/// Descriptor for `EncryptionKeys`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptionKeysDescriptor = $convert.base64Decode('Cg5FbmNyeXB0aW9uS2V5cxIQCgNrZXkYASACKAlSA2tleRIUCgV2YWx1ZRgCIAIoDFIFdmFsdWUSMgoIbWV0YWRhdGEYAyADKAsyFi5wdWxzYXIucHJvdG8uS2V5VmFsdWVSCG1ldGFkYXRh');
@$core.Deprecated('Use messageMetadataDescriptor instead')
const MessageMetadata$json = const {
  '1': 'MessageMetadata',
  '2': const [
    const {'1': 'producer_name', '3': 1, '4': 2, '5': 9, '10': 'producerName'},
    const {'1': 'sequence_id', '3': 2, '4': 2, '5': 4, '10': 'sequenceId'},
    const {'1': 'publish_time', '3': 3, '4': 2, '5': 4, '10': 'publishTime'},
    const {'1': 'properties', '3': 4, '4': 3, '5': 11, '6': '.pulsar.proto.KeyValue', '10': 'properties'},
    const {'1': 'replicated_from', '3': 5, '4': 1, '5': 9, '10': 'replicatedFrom'},
    const {'1': 'partition_key', '3': 6, '4': 1, '5': 9, '10': 'partitionKey'},
    const {'1': 'replicate_to', '3': 7, '4': 3, '5': 9, '10': 'replicateTo'},
    const {'1': 'compression', '3': 8, '4': 1, '5': 14, '6': '.pulsar.proto.CompressionType', '7': 'NONE', '10': 'compression'},
    const {'1': 'uncompressed_size', '3': 9, '4': 1, '5': 13, '7': '0', '10': 'uncompressedSize'},
    const {'1': 'num_messages_in_batch', '3': 11, '4': 1, '5': 5, '7': '1', '10': 'numMessagesInBatch'},
    const {'1': 'event_time', '3': 12, '4': 1, '5': 4, '7': '0', '10': 'eventTime'},
    const {'1': 'encryption_keys', '3': 13, '4': 3, '5': 11, '6': '.pulsar.proto.EncryptionKeys', '10': 'encryptionKeys'},
    const {'1': 'encryption_algo', '3': 14, '4': 1, '5': 9, '10': 'encryptionAlgo'},
    const {'1': 'encryption_param', '3': 15, '4': 1, '5': 12, '10': 'encryptionParam'},
    const {'1': 'schema_version', '3': 16, '4': 1, '5': 12, '10': 'schemaVersion'},
    const {'1': 'partition_key_b64_encoded', '3': 17, '4': 1, '5': 8, '7': 'false', '10': 'partitionKeyB64Encoded'},
    const {'1': 'ordering_key', '3': 18, '4': 1, '5': 12, '10': 'orderingKey'},
    const {'1': 'deliver_at_time', '3': 19, '4': 1, '5': 3, '10': 'deliverAtTime'},
    const {'1': 'marker_type', '3': 20, '4': 1, '5': 5, '10': 'markerType'},
    const {'1': 'txnid_least_bits', '3': 22, '4': 1, '5': 4, '10': 'txnidLeastBits'},
    const {'1': 'txnid_most_bits', '3': 23, '4': 1, '5': 4, '10': 'txnidMostBits'},
    const {'1': 'highest_sequence_id', '3': 24, '4': 1, '5': 4, '7': '0', '10': 'highestSequenceId'},
    const {'1': 'null_value', '3': 25, '4': 1, '5': 8, '7': 'false', '10': 'nullValue'},
    const {'1': 'uuid', '3': 26, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'num_chunks_from_msg', '3': 27, '4': 1, '5': 5, '10': 'numChunksFromMsg'},
    const {'1': 'total_chunk_msg_size', '3': 28, '4': 1, '5': 5, '10': 'totalChunkMsgSize'},
    const {'1': 'chunk_id', '3': 29, '4': 1, '5': 5, '10': 'chunkId'},
    const {'1': 'null_partition_key', '3': 30, '4': 1, '5': 8, '7': 'false', '10': 'nullPartitionKey'},
  ],
};

/// Descriptor for `MessageMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageMetadataDescriptor = $convert.base64Decode('Cg9NZXNzYWdlTWV0YWRhdGESIwoNcHJvZHVjZXJfbmFtZRgBIAIoCVIMcHJvZHVjZXJOYW1lEh8KC3NlcXVlbmNlX2lkGAIgAigEUgpzZXF1ZW5jZUlkEiEKDHB1Ymxpc2hfdGltZRgDIAIoBFILcHVibGlzaFRpbWUSNgoKcHJvcGVydGllcxgEIAMoCzIWLnB1bHNhci5wcm90by5LZXlWYWx1ZVIKcHJvcGVydGllcxInCg9yZXBsaWNhdGVkX2Zyb20YBSABKAlSDnJlcGxpY2F0ZWRGcm9tEiMKDXBhcnRpdGlvbl9rZXkYBiABKAlSDHBhcnRpdGlvbktleRIhCgxyZXBsaWNhdGVfdG8YByADKAlSC3JlcGxpY2F0ZVRvEkUKC2NvbXByZXNzaW9uGAggASgOMh0ucHVsc2FyLnByb3RvLkNvbXByZXNzaW9uVHlwZToETk9ORVILY29tcHJlc3Npb24SLgoRdW5jb21wcmVzc2VkX3NpemUYCSABKA06ATBSEHVuY29tcHJlc3NlZFNpemUSNAoVbnVtX21lc3NhZ2VzX2luX2JhdGNoGAsgASgFOgExUhJudW1NZXNzYWdlc0luQmF0Y2gSIAoKZXZlbnRfdGltZRgMIAEoBDoBMFIJZXZlbnRUaW1lEkUKD2VuY3J5cHRpb25fa2V5cxgNIAMoCzIcLnB1bHNhci5wcm90by5FbmNyeXB0aW9uS2V5c1IOZW5jcnlwdGlvbktleXMSJwoPZW5jcnlwdGlvbl9hbGdvGA4gASgJUg5lbmNyeXB0aW9uQWxnbxIpChBlbmNyeXB0aW9uX3BhcmFtGA8gASgMUg9lbmNyeXB0aW9uUGFyYW0SJQoOc2NoZW1hX3ZlcnNpb24YECABKAxSDXNjaGVtYVZlcnNpb24SQAoZcGFydGl0aW9uX2tleV9iNjRfZW5jb2RlZBgRIAEoCDoFZmFsc2VSFnBhcnRpdGlvbktleUI2NEVuY29kZWQSIQoMb3JkZXJpbmdfa2V5GBIgASgMUgtvcmRlcmluZ0tleRImCg9kZWxpdmVyX2F0X3RpbWUYEyABKANSDWRlbGl2ZXJBdFRpbWUSHwoLbWFya2VyX3R5cGUYFCABKAVSCm1hcmtlclR5cGUSKAoQdHhuaWRfbGVhc3RfYml0cxgWIAEoBFIOdHhuaWRMZWFzdEJpdHMSJgoPdHhuaWRfbW9zdF9iaXRzGBcgASgEUg10eG5pZE1vc3RCaXRzEjEKE2hpZ2hlc3Rfc2VxdWVuY2VfaWQYGCABKAQ6ATBSEWhpZ2hlc3RTZXF1ZW5jZUlkEiQKCm51bGxfdmFsdWUYGSABKAg6BWZhbHNlUgludWxsVmFsdWUSEgoEdXVpZBgaIAEoCVIEdXVpZBItChNudW1fY2h1bmtzX2Zyb21fbXNnGBsgASgFUhBudW1DaHVua3NGcm9tTXNnEi8KFHRvdGFsX2NodW5rX21zZ19zaXplGBwgASgFUhF0b3RhbENodW5rTXNnU2l6ZRIZCghjaHVua19pZBgdIAEoBVIHY2h1bmtJZBIzChJudWxsX3BhcnRpdGlvbl9rZXkYHiABKAg6BWZhbHNlUhBudWxsUGFydGl0aW9uS2V5');
@$core.Deprecated('Use singleMessageMetadataDescriptor instead')
const SingleMessageMetadata$json = const {
  '1': 'SingleMessageMetadata',
  '2': const [
    const {'1': 'properties', '3': 1, '4': 3, '5': 11, '6': '.pulsar.proto.KeyValue', '10': 'properties'},
    const {'1': 'partition_key', '3': 2, '4': 1, '5': 9, '10': 'partitionKey'},
    const {'1': 'payload_size', '3': 3, '4': 2, '5': 5, '10': 'payloadSize'},
    const {'1': 'compacted_out', '3': 4, '4': 1, '5': 8, '7': 'false', '10': 'compactedOut'},
    const {'1': 'event_time', '3': 5, '4': 1, '5': 4, '7': '0', '10': 'eventTime'},
    const {'1': 'partition_key_b64_encoded', '3': 6, '4': 1, '5': 8, '7': 'false', '10': 'partitionKeyB64Encoded'},
    const {'1': 'ordering_key', '3': 7, '4': 1, '5': 12, '10': 'orderingKey'},
    const {'1': 'sequence_id', '3': 8, '4': 1, '5': 4, '10': 'sequenceId'},
    const {'1': 'null_value', '3': 9, '4': 1, '5': 8, '7': 'false', '10': 'nullValue'},
    const {'1': 'null_partition_key', '3': 10, '4': 1, '5': 8, '7': 'false', '10': 'nullPartitionKey'},
  ],
};

/// Descriptor for `SingleMessageMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List singleMessageMetadataDescriptor = $convert.base64Decode('ChVTaW5nbGVNZXNzYWdlTWV0YWRhdGESNgoKcHJvcGVydGllcxgBIAMoCzIWLnB1bHNhci5wcm90by5LZXlWYWx1ZVIKcHJvcGVydGllcxIjCg1wYXJ0aXRpb25fa2V5GAIgASgJUgxwYXJ0aXRpb25LZXkSIQoMcGF5bG9hZF9zaXplGAMgAigFUgtwYXlsb2FkU2l6ZRIqCg1jb21wYWN0ZWRfb3V0GAQgASgIOgVmYWxzZVIMY29tcGFjdGVkT3V0EiAKCmV2ZW50X3RpbWUYBSABKAQ6ATBSCWV2ZW50VGltZRJAChlwYXJ0aXRpb25fa2V5X2I2NF9lbmNvZGVkGAYgASgIOgVmYWxzZVIWcGFydGl0aW9uS2V5QjY0RW5jb2RlZBIhCgxvcmRlcmluZ19rZXkYByABKAxSC29yZGVyaW5nS2V5Eh8KC3NlcXVlbmNlX2lkGAggASgEUgpzZXF1ZW5jZUlkEiQKCm51bGxfdmFsdWUYCSABKAg6BWZhbHNlUgludWxsVmFsdWUSMwoSbnVsbF9wYXJ0aXRpb25fa2V5GAogASgIOgVmYWxzZVIQbnVsbFBhcnRpdGlvbktleQ==');
@$core.Deprecated('Use brokerEntryMetadataDescriptor instead')
const BrokerEntryMetadata$json = const {
  '1': 'BrokerEntryMetadata',
  '2': const [
    const {'1': 'broker_timestamp', '3': 1, '4': 1, '5': 4, '10': 'brokerTimestamp'},
    const {'1': 'index', '3': 2, '4': 1, '5': 4, '10': 'index'},
  ],
};

/// Descriptor for `BrokerEntryMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List brokerEntryMetadataDescriptor = $convert.base64Decode('ChNCcm9rZXJFbnRyeU1ldGFkYXRhEikKEGJyb2tlcl90aW1lc3RhbXAYASABKARSD2Jyb2tlclRpbWVzdGFtcBIUCgVpbmRleBgCIAEoBFIFaW5kZXg=');
@$core.Deprecated('Use commandConnectDescriptor instead')
const CommandConnect$json = const {
  '1': 'CommandConnect',
  '2': const [
    const {'1': 'client_version', '3': 1, '4': 2, '5': 9, '10': 'clientVersion'},
    const {'1': 'auth_method', '3': 2, '4': 1, '5': 14, '6': '.pulsar.proto.AuthMethod', '10': 'authMethod'},
    const {'1': 'auth_method_name', '3': 5, '4': 1, '5': 9, '10': 'authMethodName'},
    const {'1': 'auth_data', '3': 3, '4': 1, '5': 12, '10': 'authData'},
    const {'1': 'protocol_version', '3': 4, '4': 1, '5': 5, '7': '0', '10': 'protocolVersion'},
    const {'1': 'proxy_to_broker_url', '3': 6, '4': 1, '5': 9, '10': 'proxyToBrokerUrl'},
    const {'1': 'original_principal', '3': 7, '4': 1, '5': 9, '10': 'originalPrincipal'},
    const {'1': 'original_auth_data', '3': 8, '4': 1, '5': 9, '10': 'originalAuthData'},
    const {'1': 'original_auth_method', '3': 9, '4': 1, '5': 9, '10': 'originalAuthMethod'},
    const {'1': 'feature_flags', '3': 10, '4': 1, '5': 11, '6': '.pulsar.proto.FeatureFlags', '10': 'featureFlags'},
  ],
};

/// Descriptor for `CommandConnect`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandConnectDescriptor = $convert.base64Decode('Cg5Db21tYW5kQ29ubmVjdBIlCg5jbGllbnRfdmVyc2lvbhgBIAIoCVINY2xpZW50VmVyc2lvbhI5CgthdXRoX21ldGhvZBgCIAEoDjIYLnB1bHNhci5wcm90by5BdXRoTWV0aG9kUgphdXRoTWV0aG9kEigKEGF1dGhfbWV0aG9kX25hbWUYBSABKAlSDmF1dGhNZXRob2ROYW1lEhsKCWF1dGhfZGF0YRgDIAEoDFIIYXV0aERhdGESLAoQcHJvdG9jb2xfdmVyc2lvbhgEIAEoBToBMFIPcHJvdG9jb2xWZXJzaW9uEi0KE3Byb3h5X3RvX2Jyb2tlcl91cmwYBiABKAlSEHByb3h5VG9Ccm9rZXJVcmwSLQoSb3JpZ2luYWxfcHJpbmNpcGFsGAcgASgJUhFvcmlnaW5hbFByaW5jaXBhbBIsChJvcmlnaW5hbF9hdXRoX2RhdGEYCCABKAlSEG9yaWdpbmFsQXV0aERhdGESMAoUb3JpZ2luYWxfYXV0aF9tZXRob2QYCSABKAlSEm9yaWdpbmFsQXV0aE1ldGhvZBI/Cg1mZWF0dXJlX2ZsYWdzGAogASgLMhoucHVsc2FyLnByb3RvLkZlYXR1cmVGbGFnc1IMZmVhdHVyZUZsYWdz');
@$core.Deprecated('Use featureFlagsDescriptor instead')
const FeatureFlags$json = const {
  '1': 'FeatureFlags',
  '2': const [
    const {'1': 'supports_auth_refresh', '3': 1, '4': 1, '5': 8, '7': 'false', '10': 'supportsAuthRefresh'},
    const {'1': 'supports_broker_entry_metadata', '3': 2, '4': 1, '5': 8, '7': 'false', '10': 'supportsBrokerEntryMetadata'},
  ],
};

/// Descriptor for `FeatureFlags`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List featureFlagsDescriptor = $convert.base64Decode('CgxGZWF0dXJlRmxhZ3MSOQoVc3VwcG9ydHNfYXV0aF9yZWZyZXNoGAEgASgIOgVmYWxzZVITc3VwcG9ydHNBdXRoUmVmcmVzaBJKCh5zdXBwb3J0c19icm9rZXJfZW50cnlfbWV0YWRhdGEYAiABKAg6BWZhbHNlUhtzdXBwb3J0c0Jyb2tlckVudHJ5TWV0YWRhdGE=');
@$core.Deprecated('Use commandConnectedDescriptor instead')
const CommandConnected$json = const {
  '1': 'CommandConnected',
  '2': const [
    const {'1': 'server_version', '3': 1, '4': 2, '5': 9, '10': 'serverVersion'},
    const {'1': 'protocol_version', '3': 2, '4': 1, '5': 5, '7': '0', '10': 'protocolVersion'},
    const {'1': 'max_message_size', '3': 3, '4': 1, '5': 5, '10': 'maxMessageSize'},
  ],
};

/// Descriptor for `CommandConnected`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandConnectedDescriptor = $convert.base64Decode('ChBDb21tYW5kQ29ubmVjdGVkEiUKDnNlcnZlcl92ZXJzaW9uGAEgAigJUg1zZXJ2ZXJWZXJzaW9uEiwKEHByb3RvY29sX3ZlcnNpb24YAiABKAU6ATBSD3Byb3RvY29sVmVyc2lvbhIoChBtYXhfbWVzc2FnZV9zaXplGAMgASgFUg5tYXhNZXNzYWdlU2l6ZQ==');
@$core.Deprecated('Use commandAuthResponseDescriptor instead')
const CommandAuthResponse$json = const {
  '1': 'CommandAuthResponse',
  '2': const [
    const {'1': 'client_version', '3': 1, '4': 1, '5': 9, '10': 'clientVersion'},
    const {'1': 'response', '3': 2, '4': 1, '5': 11, '6': '.pulsar.proto.AuthData', '10': 'response'},
    const {'1': 'protocol_version', '3': 3, '4': 1, '5': 5, '7': '0', '10': 'protocolVersion'},
  ],
};

/// Descriptor for `CommandAuthResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandAuthResponseDescriptor = $convert.base64Decode('ChNDb21tYW5kQXV0aFJlc3BvbnNlEiUKDmNsaWVudF92ZXJzaW9uGAEgASgJUg1jbGllbnRWZXJzaW9uEjIKCHJlc3BvbnNlGAIgASgLMhYucHVsc2FyLnByb3RvLkF1dGhEYXRhUghyZXNwb25zZRIsChBwcm90b2NvbF92ZXJzaW9uGAMgASgFOgEwUg9wcm90b2NvbFZlcnNpb24=');
@$core.Deprecated('Use commandAuthChallengeDescriptor instead')
const CommandAuthChallenge$json = const {
  '1': 'CommandAuthChallenge',
  '2': const [
    const {'1': 'server_version', '3': 1, '4': 1, '5': 9, '10': 'serverVersion'},
    const {'1': 'challenge', '3': 2, '4': 1, '5': 11, '6': '.pulsar.proto.AuthData', '10': 'challenge'},
    const {'1': 'protocol_version', '3': 3, '4': 1, '5': 5, '7': '0', '10': 'protocolVersion'},
  ],
};

/// Descriptor for `CommandAuthChallenge`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandAuthChallengeDescriptor = $convert.base64Decode('ChRDb21tYW5kQXV0aENoYWxsZW5nZRIlCg5zZXJ2ZXJfdmVyc2lvbhgBIAEoCVINc2VydmVyVmVyc2lvbhI0CgljaGFsbGVuZ2UYAiABKAsyFi5wdWxzYXIucHJvdG8uQXV0aERhdGFSCWNoYWxsZW5nZRIsChBwcm90b2NvbF92ZXJzaW9uGAMgASgFOgEwUg9wcm90b2NvbFZlcnNpb24=');
@$core.Deprecated('Use authDataDescriptor instead')
const AuthData$json = const {
  '1': 'AuthData',
  '2': const [
    const {'1': 'auth_method_name', '3': 1, '4': 1, '5': 9, '10': 'authMethodName'},
    const {'1': 'auth_data', '3': 2, '4': 1, '5': 12, '10': 'authData'},
  ],
};

/// Descriptor for `AuthData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authDataDescriptor = $convert.base64Decode('CghBdXRoRGF0YRIoChBhdXRoX21ldGhvZF9uYW1lGAEgASgJUg5hdXRoTWV0aG9kTmFtZRIbCglhdXRoX2RhdGEYAiABKAxSCGF1dGhEYXRh');
@$core.Deprecated('Use keySharedMetaDescriptor instead')
const KeySharedMeta$json = const {
  '1': 'KeySharedMeta',
  '2': const [
    const {'1': 'keySharedMode', '3': 1, '4': 2, '5': 14, '6': '.pulsar.proto.KeySharedMode', '10': 'keySharedMode'},
    const {'1': 'hashRanges', '3': 3, '4': 3, '5': 11, '6': '.pulsar.proto.IntRange', '10': 'hashRanges'},
    const {'1': 'allowOutOfOrderDelivery', '3': 4, '4': 1, '5': 8, '7': 'false', '10': 'allowOutOfOrderDelivery'},
  ],
};

/// Descriptor for `KeySharedMeta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keySharedMetaDescriptor = $convert.base64Decode('Cg1LZXlTaGFyZWRNZXRhEkEKDWtleVNoYXJlZE1vZGUYASACKA4yGy5wdWxzYXIucHJvdG8uS2V5U2hhcmVkTW9kZVINa2V5U2hhcmVkTW9kZRI2CgpoYXNoUmFuZ2VzGAMgAygLMhYucHVsc2FyLnByb3RvLkludFJhbmdlUgpoYXNoUmFuZ2VzEj8KF2FsbG93T3V0T2ZPcmRlckRlbGl2ZXJ5GAQgASgIOgVmYWxzZVIXYWxsb3dPdXRPZk9yZGVyRGVsaXZlcnk=');
@$core.Deprecated('Use commandSubscribeDescriptor instead')
const CommandSubscribe$json = const {
  '1': 'CommandSubscribe',
  '2': const [
    const {'1': 'topic', '3': 1, '4': 2, '5': 9, '10': 'topic'},
    const {'1': 'subscription', '3': 2, '4': 2, '5': 9, '10': 'subscription'},
    const {'1': 'subType', '3': 3, '4': 2, '5': 14, '6': '.pulsar.proto.CommandSubscribe.SubType', '10': 'subType'},
    const {'1': 'consumer_id', '3': 4, '4': 2, '5': 4, '10': 'consumerId'},
    const {'1': 'request_id', '3': 5, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'consumer_name', '3': 6, '4': 1, '5': 9, '10': 'consumerName'},
    const {'1': 'priority_level', '3': 7, '4': 1, '5': 5, '10': 'priorityLevel'},
    const {'1': 'durable', '3': 8, '4': 1, '5': 8, '7': 'true', '10': 'durable'},
    const {'1': 'start_message_id', '3': 9, '4': 1, '5': 11, '6': '.pulsar.proto.MessageIdData', '10': 'startMessageId'},
    const {'1': 'metadata', '3': 10, '4': 3, '5': 11, '6': '.pulsar.proto.KeyValue', '10': 'metadata'},
    const {'1': 'read_compacted', '3': 11, '4': 1, '5': 8, '10': 'readCompacted'},
    const {'1': 'schema', '3': 12, '4': 1, '5': 11, '6': '.pulsar.proto.Schema', '10': 'schema'},
    const {'1': 'initialPosition', '3': 13, '4': 1, '5': 14, '6': '.pulsar.proto.CommandSubscribe.InitialPosition', '7': 'Latest', '10': 'initialPosition'},
    const {'1': 'replicate_subscription_state', '3': 14, '4': 1, '5': 8, '10': 'replicateSubscriptionState'},
    const {'1': 'force_topic_creation', '3': 15, '4': 1, '5': 8, '7': 'true', '10': 'forceTopicCreation'},
    const {'1': 'start_message_rollback_duration_sec', '3': 16, '4': 1, '5': 4, '7': '0', '10': 'startMessageRollbackDurationSec'},
    const {'1': 'keySharedMeta', '3': 17, '4': 1, '5': 11, '6': '.pulsar.proto.KeySharedMeta', '10': 'keySharedMeta'},
  ],
  '4': const [CommandSubscribe_SubType$json, CommandSubscribe_InitialPosition$json],
};

@$core.Deprecated('Use commandSubscribeDescriptor instead')
const CommandSubscribe_SubType$json = const {
  '1': 'SubType',
  '2': const [
    const {'1': 'Exclusive', '2': 0},
    const {'1': 'Shared', '2': 1},
    const {'1': 'Failover', '2': 2},
    const {'1': 'Key_Shared', '2': 3},
  ],
};

@$core.Deprecated('Use commandSubscribeDescriptor instead')
const CommandSubscribe_InitialPosition$json = const {
  '1': 'InitialPosition',
  '2': const [
    const {'1': 'Latest', '2': 0},
    const {'1': 'Earliest', '2': 1},
  ],
};

/// Descriptor for `CommandSubscribe`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandSubscribeDescriptor = $convert.base64Decode('ChBDb21tYW5kU3Vic2NyaWJlEhQKBXRvcGljGAEgAigJUgV0b3BpYxIiCgxzdWJzY3JpcHRpb24YAiACKAlSDHN1YnNjcmlwdGlvbhJACgdzdWJUeXBlGAMgAigOMiYucHVsc2FyLnByb3RvLkNvbW1hbmRTdWJzY3JpYmUuU3ViVHlwZVIHc3ViVHlwZRIfCgtjb25zdW1lcl9pZBgEIAIoBFIKY29uc3VtZXJJZBIdCgpyZXF1ZXN0X2lkGAUgAigEUglyZXF1ZXN0SWQSIwoNY29uc3VtZXJfbmFtZRgGIAEoCVIMY29uc3VtZXJOYW1lEiUKDnByaW9yaXR5X2xldmVsGAcgASgFUg1wcmlvcml0eUxldmVsEh4KB2R1cmFibGUYCCABKAg6BHRydWVSB2R1cmFibGUSRQoQc3RhcnRfbWVzc2FnZV9pZBgJIAEoCzIbLnB1bHNhci5wcm90by5NZXNzYWdlSWREYXRhUg5zdGFydE1lc3NhZ2VJZBIyCghtZXRhZGF0YRgKIAMoCzIWLnB1bHNhci5wcm90by5LZXlWYWx1ZVIIbWV0YWRhdGESJQoOcmVhZF9jb21wYWN0ZWQYCyABKAhSDXJlYWRDb21wYWN0ZWQSLAoGc2NoZW1hGAwgASgLMhQucHVsc2FyLnByb3RvLlNjaGVtYVIGc2NoZW1hEmAKD2luaXRpYWxQb3NpdGlvbhgNIAEoDjIuLnB1bHNhci5wcm90by5Db21tYW5kU3Vic2NyaWJlLkluaXRpYWxQb3NpdGlvbjoGTGF0ZXN0Ug9pbml0aWFsUG9zaXRpb24SQAoccmVwbGljYXRlX3N1YnNjcmlwdGlvbl9zdGF0ZRgOIAEoCFIacmVwbGljYXRlU3Vic2NyaXB0aW9uU3RhdGUSNgoUZm9yY2VfdG9waWNfY3JlYXRpb24YDyABKAg6BHRydWVSEmZvcmNlVG9waWNDcmVhdGlvbhJPCiNzdGFydF9tZXNzYWdlX3JvbGxiYWNrX2R1cmF0aW9uX3NlYxgQIAEoBDoBMFIfc3RhcnRNZXNzYWdlUm9sbGJhY2tEdXJhdGlvblNlYxJBCg1rZXlTaGFyZWRNZXRhGBEgASgLMhsucHVsc2FyLnByb3RvLktleVNoYXJlZE1ldGFSDWtleVNoYXJlZE1ldGEiQgoHU3ViVHlwZRINCglFeGNsdXNpdmUQABIKCgZTaGFyZWQQARIMCghGYWlsb3ZlchACEg4KCktleV9TaGFyZWQQAyIrCg9Jbml0aWFsUG9zaXRpb24SCgoGTGF0ZXN0EAASDAoIRWFybGllc3QQAQ==');
@$core.Deprecated('Use commandPartitionedTopicMetadataDescriptor instead')
const CommandPartitionedTopicMetadata$json = const {
  '1': 'CommandPartitionedTopicMetadata',
  '2': const [
    const {'1': 'topic', '3': 1, '4': 2, '5': 9, '10': 'topic'},
    const {'1': 'request_id', '3': 2, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'original_principal', '3': 3, '4': 1, '5': 9, '10': 'originalPrincipal'},
    const {'1': 'original_auth_data', '3': 4, '4': 1, '5': 9, '10': 'originalAuthData'},
    const {'1': 'original_auth_method', '3': 5, '4': 1, '5': 9, '10': 'originalAuthMethod'},
  ],
};

/// Descriptor for `CommandPartitionedTopicMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandPartitionedTopicMetadataDescriptor = $convert.base64Decode('Ch9Db21tYW5kUGFydGl0aW9uZWRUb3BpY01ldGFkYXRhEhQKBXRvcGljGAEgAigJUgV0b3BpYxIdCgpyZXF1ZXN0X2lkGAIgAigEUglyZXF1ZXN0SWQSLQoSb3JpZ2luYWxfcHJpbmNpcGFsGAMgASgJUhFvcmlnaW5hbFByaW5jaXBhbBIsChJvcmlnaW5hbF9hdXRoX2RhdGEYBCABKAlSEG9yaWdpbmFsQXV0aERhdGESMAoUb3JpZ2luYWxfYXV0aF9tZXRob2QYBSABKAlSEm9yaWdpbmFsQXV0aE1ldGhvZA==');
@$core.Deprecated('Use commandPartitionedTopicMetadataResponseDescriptor instead')
const CommandPartitionedTopicMetadataResponse$json = const {
  '1': 'CommandPartitionedTopicMetadataResponse',
  '2': const [
    const {'1': 'partitions', '3': 1, '4': 1, '5': 13, '10': 'partitions'},
    const {'1': 'request_id', '3': 2, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'response', '3': 3, '4': 1, '5': 14, '6': '.pulsar.proto.CommandPartitionedTopicMetadataResponse.LookupType', '10': 'response'},
    const {'1': 'error', '3': 4, '4': 1, '5': 14, '6': '.pulsar.proto.ServerError', '10': 'error'},
    const {'1': 'message', '3': 5, '4': 1, '5': 9, '10': 'message'},
  ],
  '4': const [CommandPartitionedTopicMetadataResponse_LookupType$json],
};

@$core.Deprecated('Use commandPartitionedTopicMetadataResponseDescriptor instead')
const CommandPartitionedTopicMetadataResponse_LookupType$json = const {
  '1': 'LookupType',
  '2': const [
    const {'1': 'Success', '2': 0},
    const {'1': 'Failed', '2': 1},
  ],
};

/// Descriptor for `CommandPartitionedTopicMetadataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandPartitionedTopicMetadataResponseDescriptor = $convert.base64Decode('CidDb21tYW5kUGFydGl0aW9uZWRUb3BpY01ldGFkYXRhUmVzcG9uc2USHgoKcGFydGl0aW9ucxgBIAEoDVIKcGFydGl0aW9ucxIdCgpyZXF1ZXN0X2lkGAIgAigEUglyZXF1ZXN0SWQSXAoIcmVzcG9uc2UYAyABKA4yQC5wdWxzYXIucHJvdG8uQ29tbWFuZFBhcnRpdGlvbmVkVG9waWNNZXRhZGF0YVJlc3BvbnNlLkxvb2t1cFR5cGVSCHJlc3BvbnNlEi8KBWVycm9yGAQgASgOMhkucHVsc2FyLnByb3RvLlNlcnZlckVycm9yUgVlcnJvchIYCgdtZXNzYWdlGAUgASgJUgdtZXNzYWdlIiUKCkxvb2t1cFR5cGUSCwoHU3VjY2VzcxAAEgoKBkZhaWxlZBAB');
@$core.Deprecated('Use commandLookupTopicDescriptor instead')
const CommandLookupTopic$json = const {
  '1': 'CommandLookupTopic',
  '2': const [
    const {'1': 'topic', '3': 1, '4': 2, '5': 9, '10': 'topic'},
    const {'1': 'request_id', '3': 2, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'authoritative', '3': 3, '4': 1, '5': 8, '7': 'false', '10': 'authoritative'},
    const {'1': 'original_principal', '3': 4, '4': 1, '5': 9, '10': 'originalPrincipal'},
    const {'1': 'original_auth_data', '3': 5, '4': 1, '5': 9, '10': 'originalAuthData'},
    const {'1': 'original_auth_method', '3': 6, '4': 1, '5': 9, '10': 'originalAuthMethod'},
    const {'1': 'advertised_listener_name', '3': 7, '4': 1, '5': 9, '10': 'advertisedListenerName'},
  ],
};

/// Descriptor for `CommandLookupTopic`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandLookupTopicDescriptor = $convert.base64Decode('ChJDb21tYW5kTG9va3VwVG9waWMSFAoFdG9waWMYASACKAlSBXRvcGljEh0KCnJlcXVlc3RfaWQYAiACKARSCXJlcXVlc3RJZBIrCg1hdXRob3JpdGF0aXZlGAMgASgIOgVmYWxzZVINYXV0aG9yaXRhdGl2ZRItChJvcmlnaW5hbF9wcmluY2lwYWwYBCABKAlSEW9yaWdpbmFsUHJpbmNpcGFsEiwKEm9yaWdpbmFsX2F1dGhfZGF0YRgFIAEoCVIQb3JpZ2luYWxBdXRoRGF0YRIwChRvcmlnaW5hbF9hdXRoX21ldGhvZBgGIAEoCVISb3JpZ2luYWxBdXRoTWV0aG9kEjgKGGFkdmVydGlzZWRfbGlzdGVuZXJfbmFtZRgHIAEoCVIWYWR2ZXJ0aXNlZExpc3RlbmVyTmFtZQ==');
@$core.Deprecated('Use commandLookupTopicResponseDescriptor instead')
const CommandLookupTopicResponse$json = const {
  '1': 'CommandLookupTopicResponse',
  '2': const [
    const {'1': 'brokerServiceUrl', '3': 1, '4': 1, '5': 9, '10': 'brokerServiceUrl'},
    const {'1': 'brokerServiceUrlTls', '3': 2, '4': 1, '5': 9, '10': 'brokerServiceUrlTls'},
    const {'1': 'response', '3': 3, '4': 1, '5': 14, '6': '.pulsar.proto.CommandLookupTopicResponse.LookupType', '10': 'response'},
    const {'1': 'request_id', '3': 4, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'authoritative', '3': 5, '4': 1, '5': 8, '7': 'false', '10': 'authoritative'},
    const {'1': 'error', '3': 6, '4': 1, '5': 14, '6': '.pulsar.proto.ServerError', '10': 'error'},
    const {'1': 'message', '3': 7, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'proxy_through_service_url', '3': 8, '4': 1, '5': 8, '7': 'false', '10': 'proxyThroughServiceUrl'},
  ],
  '4': const [CommandLookupTopicResponse_LookupType$json],
};

@$core.Deprecated('Use commandLookupTopicResponseDescriptor instead')
const CommandLookupTopicResponse_LookupType$json = const {
  '1': 'LookupType',
  '2': const [
    const {'1': 'Redirect', '2': 0},
    const {'1': 'Connect', '2': 1},
    const {'1': 'Failed', '2': 2},
  ],
};

/// Descriptor for `CommandLookupTopicResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandLookupTopicResponseDescriptor = $convert.base64Decode('ChpDb21tYW5kTG9va3VwVG9waWNSZXNwb25zZRIqChBicm9rZXJTZXJ2aWNlVXJsGAEgASgJUhBicm9rZXJTZXJ2aWNlVXJsEjAKE2Jyb2tlclNlcnZpY2VVcmxUbHMYAiABKAlSE2Jyb2tlclNlcnZpY2VVcmxUbHMSTwoIcmVzcG9uc2UYAyABKA4yMy5wdWxzYXIucHJvdG8uQ29tbWFuZExvb2t1cFRvcGljUmVzcG9uc2UuTG9va3VwVHlwZVIIcmVzcG9uc2USHQoKcmVxdWVzdF9pZBgEIAIoBFIJcmVxdWVzdElkEisKDWF1dGhvcml0YXRpdmUYBSABKAg6BWZhbHNlUg1hdXRob3JpdGF0aXZlEi8KBWVycm9yGAYgASgOMhkucHVsc2FyLnByb3RvLlNlcnZlckVycm9yUgVlcnJvchIYCgdtZXNzYWdlGAcgASgJUgdtZXNzYWdlEkAKGXByb3h5X3Rocm91Z2hfc2VydmljZV91cmwYCCABKAg6BWZhbHNlUhZwcm94eVRocm91Z2hTZXJ2aWNlVXJsIjMKCkxvb2t1cFR5cGUSDAoIUmVkaXJlY3QQABILCgdDb25uZWN0EAESCgoGRmFpbGVkEAI=');
@$core.Deprecated('Use commandProducerDescriptor instead')
const CommandProducer$json = const {
  '1': 'CommandProducer',
  '2': const [
    const {'1': 'topic', '3': 1, '4': 2, '5': 9, '10': 'topic'},
    const {'1': 'producer_id', '3': 2, '4': 2, '5': 4, '10': 'producerId'},
    const {'1': 'request_id', '3': 3, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'producer_name', '3': 4, '4': 1, '5': 9, '10': 'producerName'},
    const {'1': 'encrypted', '3': 5, '4': 1, '5': 8, '7': 'false', '10': 'encrypted'},
    const {'1': 'metadata', '3': 6, '4': 3, '5': 11, '6': '.pulsar.proto.KeyValue', '10': 'metadata'},
    const {'1': 'schema', '3': 7, '4': 1, '5': 11, '6': '.pulsar.proto.Schema', '10': 'schema'},
    const {'1': 'epoch', '3': 8, '4': 1, '5': 4, '7': '0', '10': 'epoch'},
    const {'1': 'user_provided_producer_name', '3': 9, '4': 1, '5': 8, '7': 'true', '10': 'userProvidedProducerName'},
    const {'1': 'producer_access_mode', '3': 10, '4': 1, '5': 14, '6': '.pulsar.proto.ProducerAccessMode', '7': 'Shared', '10': 'producerAccessMode'},
    const {'1': 'topic_epoch', '3': 11, '4': 1, '5': 4, '10': 'topicEpoch'},
  ],
};

/// Descriptor for `CommandProducer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandProducerDescriptor = $convert.base64Decode('Cg9Db21tYW5kUHJvZHVjZXISFAoFdG9waWMYASACKAlSBXRvcGljEh8KC3Byb2R1Y2VyX2lkGAIgAigEUgpwcm9kdWNlcklkEh0KCnJlcXVlc3RfaWQYAyACKARSCXJlcXVlc3RJZBIjCg1wcm9kdWNlcl9uYW1lGAQgASgJUgxwcm9kdWNlck5hbWUSIwoJZW5jcnlwdGVkGAUgASgIOgVmYWxzZVIJZW5jcnlwdGVkEjIKCG1ldGFkYXRhGAYgAygLMhYucHVsc2FyLnByb3RvLktleVZhbHVlUghtZXRhZGF0YRIsCgZzY2hlbWEYByABKAsyFC5wdWxzYXIucHJvdG8uU2NoZW1hUgZzY2hlbWESFwoFZXBvY2gYCCABKAQ6ATBSBWVwb2NoEkMKG3VzZXJfcHJvdmlkZWRfcHJvZHVjZXJfbmFtZRgJIAEoCDoEdHJ1ZVIYdXNlclByb3ZpZGVkUHJvZHVjZXJOYW1lEloKFHByb2R1Y2VyX2FjY2Vzc19tb2RlGAogASgOMiAucHVsc2FyLnByb3RvLlByb2R1Y2VyQWNjZXNzTW9kZToGU2hhcmVkUhJwcm9kdWNlckFjY2Vzc01vZGUSHwoLdG9waWNfZXBvY2gYCyABKARSCnRvcGljRXBvY2g=');
@$core.Deprecated('Use commandSendDescriptor instead')
const CommandSend$json = const {
  '1': 'CommandSend',
  '2': const [
    const {'1': 'producer_id', '3': 1, '4': 2, '5': 4, '10': 'producerId'},
    const {'1': 'sequence_id', '3': 2, '4': 2, '5': 4, '10': 'sequenceId'},
    const {'1': 'num_messages', '3': 3, '4': 1, '5': 5, '7': '1', '10': 'numMessages'},
    const {'1': 'txnid_least_bits', '3': 4, '4': 1, '5': 4, '7': '0', '10': 'txnidLeastBits'},
    const {'1': 'txnid_most_bits', '3': 5, '4': 1, '5': 4, '7': '0', '10': 'txnidMostBits'},
    const {'1': 'highest_sequence_id', '3': 6, '4': 1, '5': 4, '7': '0', '10': 'highestSequenceId'},
    const {'1': 'is_chunk', '3': 7, '4': 1, '5': 8, '7': 'false', '10': 'isChunk'},
  ],
};

/// Descriptor for `CommandSend`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandSendDescriptor = $convert.base64Decode('CgtDb21tYW5kU2VuZBIfCgtwcm9kdWNlcl9pZBgBIAIoBFIKcHJvZHVjZXJJZBIfCgtzZXF1ZW5jZV9pZBgCIAIoBFIKc2VxdWVuY2VJZBIkCgxudW1fbWVzc2FnZXMYAyABKAU6ATFSC251bU1lc3NhZ2VzEisKEHR4bmlkX2xlYXN0X2JpdHMYBCABKAQ6ATBSDnR4bmlkTGVhc3RCaXRzEikKD3R4bmlkX21vc3RfYml0cxgFIAEoBDoBMFINdHhuaWRNb3N0Qml0cxIxChNoaWdoZXN0X3NlcXVlbmNlX2lkGAYgASgEOgEwUhFoaWdoZXN0U2VxdWVuY2VJZBIgCghpc19jaHVuaxgHIAEoCDoFZmFsc2VSB2lzQ2h1bms=');
@$core.Deprecated('Use commandSendReceiptDescriptor instead')
const CommandSendReceipt$json = const {
  '1': 'CommandSendReceipt',
  '2': const [
    const {'1': 'producer_id', '3': 1, '4': 2, '5': 4, '10': 'producerId'},
    const {'1': 'sequence_id', '3': 2, '4': 2, '5': 4, '10': 'sequenceId'},
    const {'1': 'message_id', '3': 3, '4': 1, '5': 11, '6': '.pulsar.proto.MessageIdData', '10': 'messageId'},
    const {'1': 'highest_sequence_id', '3': 4, '4': 1, '5': 4, '7': '0', '10': 'highestSequenceId'},
  ],
};

/// Descriptor for `CommandSendReceipt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandSendReceiptDescriptor = $convert.base64Decode('ChJDb21tYW5kU2VuZFJlY2VpcHQSHwoLcHJvZHVjZXJfaWQYASACKARSCnByb2R1Y2VySWQSHwoLc2VxdWVuY2VfaWQYAiACKARSCnNlcXVlbmNlSWQSOgoKbWVzc2FnZV9pZBgDIAEoCzIbLnB1bHNhci5wcm90by5NZXNzYWdlSWREYXRhUgltZXNzYWdlSWQSMQoTaGlnaGVzdF9zZXF1ZW5jZV9pZBgEIAEoBDoBMFIRaGlnaGVzdFNlcXVlbmNlSWQ=');
@$core.Deprecated('Use commandSendErrorDescriptor instead')
const CommandSendError$json = const {
  '1': 'CommandSendError',
  '2': const [
    const {'1': 'producer_id', '3': 1, '4': 2, '5': 4, '10': 'producerId'},
    const {'1': 'sequence_id', '3': 2, '4': 2, '5': 4, '10': 'sequenceId'},
    const {'1': 'error', '3': 3, '4': 2, '5': 14, '6': '.pulsar.proto.ServerError', '10': 'error'},
    const {'1': 'message', '3': 4, '4': 2, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `CommandSendError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandSendErrorDescriptor = $convert.base64Decode('ChBDb21tYW5kU2VuZEVycm9yEh8KC3Byb2R1Y2VyX2lkGAEgAigEUgpwcm9kdWNlcklkEh8KC3NlcXVlbmNlX2lkGAIgAigEUgpzZXF1ZW5jZUlkEi8KBWVycm9yGAMgAigOMhkucHVsc2FyLnByb3RvLlNlcnZlckVycm9yUgVlcnJvchIYCgdtZXNzYWdlGAQgAigJUgdtZXNzYWdl');
@$core.Deprecated('Use commandMessageDescriptor instead')
const CommandMessage$json = const {
  '1': 'CommandMessage',
  '2': const [
    const {'1': 'consumer_id', '3': 1, '4': 2, '5': 4, '10': 'consumerId'},
    const {'1': 'message_id', '3': 2, '4': 2, '5': 11, '6': '.pulsar.proto.MessageIdData', '10': 'messageId'},
    const {'1': 'redelivery_count', '3': 3, '4': 1, '5': 13, '7': '0', '10': 'redeliveryCount'},
    const {'1': 'ack_set', '3': 4, '4': 3, '5': 3, '10': 'ackSet'},
  ],
};

/// Descriptor for `CommandMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandMessageDescriptor = $convert.base64Decode('Cg5Db21tYW5kTWVzc2FnZRIfCgtjb25zdW1lcl9pZBgBIAIoBFIKY29uc3VtZXJJZBI6CgptZXNzYWdlX2lkGAIgAigLMhsucHVsc2FyLnByb3RvLk1lc3NhZ2VJZERhdGFSCW1lc3NhZ2VJZBIsChByZWRlbGl2ZXJ5X2NvdW50GAMgASgNOgEwUg9yZWRlbGl2ZXJ5Q291bnQSFwoHYWNrX3NldBgEIAMoA1IGYWNrU2V0');
@$core.Deprecated('Use commandAckDescriptor instead')
const CommandAck$json = const {
  '1': 'CommandAck',
  '2': const [
    const {'1': 'consumer_id', '3': 1, '4': 2, '5': 4, '10': 'consumerId'},
    const {'1': 'ack_type', '3': 2, '4': 2, '5': 14, '6': '.pulsar.proto.CommandAck.AckType', '10': 'ackType'},
    const {'1': 'message_id', '3': 3, '4': 3, '5': 11, '6': '.pulsar.proto.MessageIdData', '10': 'messageId'},
    const {'1': 'validation_error', '3': 4, '4': 1, '5': 14, '6': '.pulsar.proto.CommandAck.ValidationError', '10': 'validationError'},
    const {'1': 'properties', '3': 5, '4': 3, '5': 11, '6': '.pulsar.proto.KeyLongValue', '10': 'properties'},
    const {'1': 'txnid_least_bits', '3': 6, '4': 1, '5': 4, '7': '0', '10': 'txnidLeastBits'},
    const {'1': 'txnid_most_bits', '3': 7, '4': 1, '5': 4, '7': '0', '10': 'txnidMostBits'},
    const {'1': 'request_id', '3': 8, '4': 1, '5': 4, '10': 'requestId'},
  ],
  '4': const [CommandAck_AckType$json, CommandAck_ValidationError$json],
};

@$core.Deprecated('Use commandAckDescriptor instead')
const CommandAck_AckType$json = const {
  '1': 'AckType',
  '2': const [
    const {'1': 'Individual', '2': 0},
    const {'1': 'Cumulative', '2': 1},
  ],
};

@$core.Deprecated('Use commandAckDescriptor instead')
const CommandAck_ValidationError$json = const {
  '1': 'ValidationError',
  '2': const [
    const {'1': 'UncompressedSizeCorruption', '2': 0},
    const {'1': 'DecompressionError', '2': 1},
    const {'1': 'ChecksumMismatch', '2': 2},
    const {'1': 'BatchDeSerializeError', '2': 3},
    const {'1': 'DecryptionError', '2': 4},
  ],
};

/// Descriptor for `CommandAck`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandAckDescriptor = $convert.base64Decode('CgpDb21tYW5kQWNrEh8KC2NvbnN1bWVyX2lkGAEgAigEUgpjb25zdW1lcklkEjsKCGFja190eXBlGAIgAigOMiAucHVsc2FyLnByb3RvLkNvbW1hbmRBY2suQWNrVHlwZVIHYWNrVHlwZRI6CgptZXNzYWdlX2lkGAMgAygLMhsucHVsc2FyLnByb3RvLk1lc3NhZ2VJZERhdGFSCW1lc3NhZ2VJZBJTChB2YWxpZGF0aW9uX2Vycm9yGAQgASgOMigucHVsc2FyLnByb3RvLkNvbW1hbmRBY2suVmFsaWRhdGlvbkVycm9yUg92YWxpZGF0aW9uRXJyb3ISOgoKcHJvcGVydGllcxgFIAMoCzIaLnB1bHNhci5wcm90by5LZXlMb25nVmFsdWVSCnByb3BlcnRpZXMSKwoQdHhuaWRfbGVhc3RfYml0cxgGIAEoBDoBMFIOdHhuaWRMZWFzdEJpdHMSKQoPdHhuaWRfbW9zdF9iaXRzGAcgASgEOgEwUg10eG5pZE1vc3RCaXRzEh0KCnJlcXVlc3RfaWQYCCABKARSCXJlcXVlc3RJZCIpCgdBY2tUeXBlEg4KCkluZGl2aWR1YWwQABIOCgpDdW11bGF0aXZlEAEijwEKD1ZhbGlkYXRpb25FcnJvchIeChpVbmNvbXByZXNzZWRTaXplQ29ycnVwdGlvbhAAEhYKEkRlY29tcHJlc3Npb25FcnJvchABEhQKEENoZWNrc3VtTWlzbWF0Y2gQAhIZChVCYXRjaERlU2VyaWFsaXplRXJyb3IQAxITCg9EZWNyeXB0aW9uRXJyb3IQBA==');
@$core.Deprecated('Use commandAckResponseDescriptor instead')
const CommandAckResponse$json = const {
  '1': 'CommandAckResponse',
  '2': const [
    const {'1': 'consumer_id', '3': 1, '4': 2, '5': 4, '10': 'consumerId'},
    const {'1': 'txnid_least_bits', '3': 2, '4': 1, '5': 4, '7': '0', '10': 'txnidLeastBits'},
    const {'1': 'txnid_most_bits', '3': 3, '4': 1, '5': 4, '7': '0', '10': 'txnidMostBits'},
    const {'1': 'error', '3': 4, '4': 1, '5': 14, '6': '.pulsar.proto.ServerError', '10': 'error'},
    const {'1': 'message', '3': 5, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'request_id', '3': 6, '4': 1, '5': 4, '10': 'requestId'},
  ],
};

/// Descriptor for `CommandAckResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandAckResponseDescriptor = $convert.base64Decode('ChJDb21tYW5kQWNrUmVzcG9uc2USHwoLY29uc3VtZXJfaWQYASACKARSCmNvbnN1bWVySWQSKwoQdHhuaWRfbGVhc3RfYml0cxgCIAEoBDoBMFIOdHhuaWRMZWFzdEJpdHMSKQoPdHhuaWRfbW9zdF9iaXRzGAMgASgEOgEwUg10eG5pZE1vc3RCaXRzEi8KBWVycm9yGAQgASgOMhkucHVsc2FyLnByb3RvLlNlcnZlckVycm9yUgVlcnJvchIYCgdtZXNzYWdlGAUgASgJUgdtZXNzYWdlEh0KCnJlcXVlc3RfaWQYBiABKARSCXJlcXVlc3RJZA==');
@$core.Deprecated('Use commandActiveConsumerChangeDescriptor instead')
const CommandActiveConsumerChange$json = const {
  '1': 'CommandActiveConsumerChange',
  '2': const [
    const {'1': 'consumer_id', '3': 1, '4': 2, '5': 4, '10': 'consumerId'},
    const {'1': 'is_active', '3': 2, '4': 1, '5': 8, '7': 'false', '10': 'isActive'},
  ],
};

/// Descriptor for `CommandActiveConsumerChange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandActiveConsumerChangeDescriptor = $convert.base64Decode('ChtDb21tYW5kQWN0aXZlQ29uc3VtZXJDaGFuZ2USHwoLY29uc3VtZXJfaWQYASACKARSCmNvbnN1bWVySWQSIgoJaXNfYWN0aXZlGAIgASgIOgVmYWxzZVIIaXNBY3RpdmU=');
@$core.Deprecated('Use commandFlowDescriptor instead')
const CommandFlow$json = const {
  '1': 'CommandFlow',
  '2': const [
    const {'1': 'consumer_id', '3': 1, '4': 2, '5': 4, '10': 'consumerId'},
    const {'1': 'messagePermits', '3': 2, '4': 2, '5': 13, '10': 'messagePermits'},
  ],
};

/// Descriptor for `CommandFlow`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandFlowDescriptor = $convert.base64Decode('CgtDb21tYW5kRmxvdxIfCgtjb25zdW1lcl9pZBgBIAIoBFIKY29uc3VtZXJJZBImCg5tZXNzYWdlUGVybWl0cxgCIAIoDVIObWVzc2FnZVBlcm1pdHM=');
@$core.Deprecated('Use commandUnsubscribeDescriptor instead')
const CommandUnsubscribe$json = const {
  '1': 'CommandUnsubscribe',
  '2': const [
    const {'1': 'consumer_id', '3': 1, '4': 2, '5': 4, '10': 'consumerId'},
    const {'1': 'request_id', '3': 2, '4': 2, '5': 4, '10': 'requestId'},
  ],
};

/// Descriptor for `CommandUnsubscribe`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandUnsubscribeDescriptor = $convert.base64Decode('ChJDb21tYW5kVW5zdWJzY3JpYmUSHwoLY29uc3VtZXJfaWQYASACKARSCmNvbnN1bWVySWQSHQoKcmVxdWVzdF9pZBgCIAIoBFIJcmVxdWVzdElk');
@$core.Deprecated('Use commandSeekDescriptor instead')
const CommandSeek$json = const {
  '1': 'CommandSeek',
  '2': const [
    const {'1': 'consumer_id', '3': 1, '4': 2, '5': 4, '10': 'consumerId'},
    const {'1': 'request_id', '3': 2, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'message_id', '3': 3, '4': 1, '5': 11, '6': '.pulsar.proto.MessageIdData', '10': 'messageId'},
    const {'1': 'message_publish_time', '3': 4, '4': 1, '5': 4, '10': 'messagePublishTime'},
  ],
};

/// Descriptor for `CommandSeek`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandSeekDescriptor = $convert.base64Decode('CgtDb21tYW5kU2VlaxIfCgtjb25zdW1lcl9pZBgBIAIoBFIKY29uc3VtZXJJZBIdCgpyZXF1ZXN0X2lkGAIgAigEUglyZXF1ZXN0SWQSOgoKbWVzc2FnZV9pZBgDIAEoCzIbLnB1bHNhci5wcm90by5NZXNzYWdlSWREYXRhUgltZXNzYWdlSWQSMAoUbWVzc2FnZV9wdWJsaXNoX3RpbWUYBCABKARSEm1lc3NhZ2VQdWJsaXNoVGltZQ==');
@$core.Deprecated('Use commandReachedEndOfTopicDescriptor instead')
const CommandReachedEndOfTopic$json = const {
  '1': 'CommandReachedEndOfTopic',
  '2': const [
    const {'1': 'consumer_id', '3': 1, '4': 2, '5': 4, '10': 'consumerId'},
  ],
};

/// Descriptor for `CommandReachedEndOfTopic`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandReachedEndOfTopicDescriptor = $convert.base64Decode('ChhDb21tYW5kUmVhY2hlZEVuZE9mVG9waWMSHwoLY29uc3VtZXJfaWQYASACKARSCmNvbnN1bWVySWQ=');
@$core.Deprecated('Use commandCloseProducerDescriptor instead')
const CommandCloseProducer$json = const {
  '1': 'CommandCloseProducer',
  '2': const [
    const {'1': 'producer_id', '3': 1, '4': 2, '5': 4, '10': 'producerId'},
    const {'1': 'request_id', '3': 2, '4': 2, '5': 4, '10': 'requestId'},
  ],
};

/// Descriptor for `CommandCloseProducer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandCloseProducerDescriptor = $convert.base64Decode('ChRDb21tYW5kQ2xvc2VQcm9kdWNlchIfCgtwcm9kdWNlcl9pZBgBIAIoBFIKcHJvZHVjZXJJZBIdCgpyZXF1ZXN0X2lkGAIgAigEUglyZXF1ZXN0SWQ=');
@$core.Deprecated('Use commandCloseConsumerDescriptor instead')
const CommandCloseConsumer$json = const {
  '1': 'CommandCloseConsumer',
  '2': const [
    const {'1': 'consumer_id', '3': 1, '4': 2, '5': 4, '10': 'consumerId'},
    const {'1': 'request_id', '3': 2, '4': 2, '5': 4, '10': 'requestId'},
  ],
};

/// Descriptor for `CommandCloseConsumer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandCloseConsumerDescriptor = $convert.base64Decode('ChRDb21tYW5kQ2xvc2VDb25zdW1lchIfCgtjb25zdW1lcl9pZBgBIAIoBFIKY29uc3VtZXJJZBIdCgpyZXF1ZXN0X2lkGAIgAigEUglyZXF1ZXN0SWQ=');
@$core.Deprecated('Use commandRedeliverUnacknowledgedMessagesDescriptor instead')
const CommandRedeliverUnacknowledgedMessages$json = const {
  '1': 'CommandRedeliverUnacknowledgedMessages',
  '2': const [
    const {'1': 'consumer_id', '3': 1, '4': 2, '5': 4, '10': 'consumerId'},
    const {'1': 'message_ids', '3': 2, '4': 3, '5': 11, '6': '.pulsar.proto.MessageIdData', '10': 'messageIds'},
  ],
};

/// Descriptor for `CommandRedeliverUnacknowledgedMessages`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandRedeliverUnacknowledgedMessagesDescriptor = $convert.base64Decode('CiZDb21tYW5kUmVkZWxpdmVyVW5hY2tub3dsZWRnZWRNZXNzYWdlcxIfCgtjb25zdW1lcl9pZBgBIAIoBFIKY29uc3VtZXJJZBI8CgttZXNzYWdlX2lkcxgCIAMoCzIbLnB1bHNhci5wcm90by5NZXNzYWdlSWREYXRhUgptZXNzYWdlSWRz');
@$core.Deprecated('Use commandSuccessDescriptor instead')
const CommandSuccess$json = const {
  '1': 'CommandSuccess',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'schema', '3': 2, '4': 1, '5': 11, '6': '.pulsar.proto.Schema', '10': 'schema'},
  ],
};

/// Descriptor for `CommandSuccess`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandSuccessDescriptor = $convert.base64Decode('Cg5Db21tYW5kU3VjY2VzcxIdCgpyZXF1ZXN0X2lkGAEgAigEUglyZXF1ZXN0SWQSLAoGc2NoZW1hGAIgASgLMhQucHVsc2FyLnByb3RvLlNjaGVtYVIGc2NoZW1h');
@$core.Deprecated('Use commandProducerSuccessDescriptor instead')
const CommandProducerSuccess$json = const {
  '1': 'CommandProducerSuccess',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'producer_name', '3': 2, '4': 2, '5': 9, '10': 'producerName'},
    const {'1': 'last_sequence_id', '3': 3, '4': 1, '5': 3, '7': '-1', '10': 'lastSequenceId'},
    const {'1': 'schema_version', '3': 4, '4': 1, '5': 12, '10': 'schemaVersion'},
    const {'1': 'topic_epoch', '3': 5, '4': 1, '5': 4, '10': 'topicEpoch'},
    const {'1': 'producer_ready', '3': 6, '4': 1, '5': 8, '7': 'true', '10': 'producerReady'},
  ],
};

/// Descriptor for `CommandProducerSuccess`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandProducerSuccessDescriptor = $convert.base64Decode('ChZDb21tYW5kUHJvZHVjZXJTdWNjZXNzEh0KCnJlcXVlc3RfaWQYASACKARSCXJlcXVlc3RJZBIjCg1wcm9kdWNlcl9uYW1lGAIgAigJUgxwcm9kdWNlck5hbWUSLAoQbGFzdF9zZXF1ZW5jZV9pZBgDIAEoAzoCLTFSDmxhc3RTZXF1ZW5jZUlkEiUKDnNjaGVtYV92ZXJzaW9uGAQgASgMUg1zY2hlbWFWZXJzaW9uEh8KC3RvcGljX2Vwb2NoGAUgASgEUgp0b3BpY0Vwb2NoEisKDnByb2R1Y2VyX3JlYWR5GAYgASgIOgR0cnVlUg1wcm9kdWNlclJlYWR5');
@$core.Deprecated('Use commandErrorDescriptor instead')
const CommandError$json = const {
  '1': 'CommandError',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'error', '3': 2, '4': 2, '5': 14, '6': '.pulsar.proto.ServerError', '10': 'error'},
    const {'1': 'message', '3': 3, '4': 2, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `CommandError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandErrorDescriptor = $convert.base64Decode('CgxDb21tYW5kRXJyb3ISHQoKcmVxdWVzdF9pZBgBIAIoBFIJcmVxdWVzdElkEi8KBWVycm9yGAIgAigOMhkucHVsc2FyLnByb3RvLlNlcnZlckVycm9yUgVlcnJvchIYCgdtZXNzYWdlGAMgAigJUgdtZXNzYWdl');
@$core.Deprecated('Use commandPingDescriptor instead')
const CommandPing$json = const {
  '1': 'CommandPing',
};

/// Descriptor for `CommandPing`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandPingDescriptor = $convert.base64Decode('CgtDb21tYW5kUGluZw==');
@$core.Deprecated('Use commandPongDescriptor instead')
const CommandPong$json = const {
  '1': 'CommandPong',
};

/// Descriptor for `CommandPong`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandPongDescriptor = $convert.base64Decode('CgtDb21tYW5kUG9uZw==');
@$core.Deprecated('Use commandConsumerStatsDescriptor instead')
const CommandConsumerStats$json = const {
  '1': 'CommandConsumerStats',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'consumer_id', '3': 4, '4': 2, '5': 4, '10': 'consumerId'},
  ],
};

/// Descriptor for `CommandConsumerStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandConsumerStatsDescriptor = $convert.base64Decode('ChRDb21tYW5kQ29uc3VtZXJTdGF0cxIdCgpyZXF1ZXN0X2lkGAEgAigEUglyZXF1ZXN0SWQSHwoLY29uc3VtZXJfaWQYBCACKARSCmNvbnN1bWVySWQ=');
@$core.Deprecated('Use commandConsumerStatsResponseDescriptor instead')
const CommandConsumerStatsResponse$json = const {
  '1': 'CommandConsumerStatsResponse',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'error_code', '3': 2, '4': 1, '5': 14, '6': '.pulsar.proto.ServerError', '10': 'errorCode'},
    const {'1': 'error_message', '3': 3, '4': 1, '5': 9, '10': 'errorMessage'},
    const {'1': 'msgRateOut', '3': 4, '4': 1, '5': 1, '10': 'msgRateOut'},
    const {'1': 'msgThroughputOut', '3': 5, '4': 1, '5': 1, '10': 'msgThroughputOut'},
    const {'1': 'msgRateRedeliver', '3': 6, '4': 1, '5': 1, '10': 'msgRateRedeliver'},
    const {'1': 'consumerName', '3': 7, '4': 1, '5': 9, '10': 'consumerName'},
    const {'1': 'availablePermits', '3': 8, '4': 1, '5': 4, '10': 'availablePermits'},
    const {'1': 'unackedMessages', '3': 9, '4': 1, '5': 4, '10': 'unackedMessages'},
    const {'1': 'blockedConsumerOnUnackedMsgs', '3': 10, '4': 1, '5': 8, '10': 'blockedConsumerOnUnackedMsgs'},
    const {'1': 'address', '3': 11, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'connectedSince', '3': 12, '4': 1, '5': 9, '10': 'connectedSince'},
    const {'1': 'type', '3': 13, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'msgRateExpired', '3': 14, '4': 1, '5': 1, '10': 'msgRateExpired'},
    const {'1': 'msgBacklog', '3': 15, '4': 1, '5': 4, '10': 'msgBacklog'},
  ],
};

/// Descriptor for `CommandConsumerStatsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandConsumerStatsResponseDescriptor = $convert.base64Decode('ChxDb21tYW5kQ29uc3VtZXJTdGF0c1Jlc3BvbnNlEh0KCnJlcXVlc3RfaWQYASACKARSCXJlcXVlc3RJZBI4CgplcnJvcl9jb2RlGAIgASgOMhkucHVsc2FyLnByb3RvLlNlcnZlckVycm9yUgllcnJvckNvZGUSIwoNZXJyb3JfbWVzc2FnZRgDIAEoCVIMZXJyb3JNZXNzYWdlEh4KCm1zZ1JhdGVPdXQYBCABKAFSCm1zZ1JhdGVPdXQSKgoQbXNnVGhyb3VnaHB1dE91dBgFIAEoAVIQbXNnVGhyb3VnaHB1dE91dBIqChBtc2dSYXRlUmVkZWxpdmVyGAYgASgBUhBtc2dSYXRlUmVkZWxpdmVyEiIKDGNvbnN1bWVyTmFtZRgHIAEoCVIMY29uc3VtZXJOYW1lEioKEGF2YWlsYWJsZVBlcm1pdHMYCCABKARSEGF2YWlsYWJsZVBlcm1pdHMSKAoPdW5hY2tlZE1lc3NhZ2VzGAkgASgEUg91bmFja2VkTWVzc2FnZXMSQgocYmxvY2tlZENvbnN1bWVyT25VbmFja2VkTXNncxgKIAEoCFIcYmxvY2tlZENvbnN1bWVyT25VbmFja2VkTXNncxIYCgdhZGRyZXNzGAsgASgJUgdhZGRyZXNzEiYKDmNvbm5lY3RlZFNpbmNlGAwgASgJUg5jb25uZWN0ZWRTaW5jZRISCgR0eXBlGA0gASgJUgR0eXBlEiYKDm1zZ1JhdGVFeHBpcmVkGA4gASgBUg5tc2dSYXRlRXhwaXJlZBIeCgptc2dCYWNrbG9nGA8gASgEUgptc2dCYWNrbG9n');
@$core.Deprecated('Use commandGetLastMessageIdDescriptor instead')
const CommandGetLastMessageId$json = const {
  '1': 'CommandGetLastMessageId',
  '2': const [
    const {'1': 'consumer_id', '3': 1, '4': 2, '5': 4, '10': 'consumerId'},
    const {'1': 'request_id', '3': 2, '4': 2, '5': 4, '10': 'requestId'},
  ],
};

/// Descriptor for `CommandGetLastMessageId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandGetLastMessageIdDescriptor = $convert.base64Decode('ChdDb21tYW5kR2V0TGFzdE1lc3NhZ2VJZBIfCgtjb25zdW1lcl9pZBgBIAIoBFIKY29uc3VtZXJJZBIdCgpyZXF1ZXN0X2lkGAIgAigEUglyZXF1ZXN0SWQ=');
@$core.Deprecated('Use commandGetLastMessageIdResponseDescriptor instead')
const CommandGetLastMessageIdResponse$json = const {
  '1': 'CommandGetLastMessageIdResponse',
  '2': const [
    const {'1': 'last_message_id', '3': 1, '4': 2, '5': 11, '6': '.pulsar.proto.MessageIdData', '10': 'lastMessageId'},
    const {'1': 'request_id', '3': 2, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'consumer_mark_delete_position', '3': 3, '4': 1, '5': 11, '6': '.pulsar.proto.MessageIdData', '10': 'consumerMarkDeletePosition'},
  ],
};

/// Descriptor for `CommandGetLastMessageIdResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandGetLastMessageIdResponseDescriptor = $convert.base64Decode('Ch9Db21tYW5kR2V0TGFzdE1lc3NhZ2VJZFJlc3BvbnNlEkMKD2xhc3RfbWVzc2FnZV9pZBgBIAIoCzIbLnB1bHNhci5wcm90by5NZXNzYWdlSWREYXRhUg1sYXN0TWVzc2FnZUlkEh0KCnJlcXVlc3RfaWQYAiACKARSCXJlcXVlc3RJZBJeCh1jb25zdW1lcl9tYXJrX2RlbGV0ZV9wb3NpdGlvbhgDIAEoCzIbLnB1bHNhci5wcm90by5NZXNzYWdlSWREYXRhUhpjb25zdW1lck1hcmtEZWxldGVQb3NpdGlvbg==');
@$core.Deprecated('Use commandGetTopicsOfNamespaceDescriptor instead')
const CommandGetTopicsOfNamespace$json = const {
  '1': 'CommandGetTopicsOfNamespace',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'namespace', '3': 2, '4': 2, '5': 9, '10': 'namespace'},
    const {'1': 'mode', '3': 3, '4': 1, '5': 14, '6': '.pulsar.proto.CommandGetTopicsOfNamespace.Mode', '7': 'PERSISTENT', '10': 'mode'},
  ],
  '4': const [CommandGetTopicsOfNamespace_Mode$json],
};

@$core.Deprecated('Use commandGetTopicsOfNamespaceDescriptor instead')
const CommandGetTopicsOfNamespace_Mode$json = const {
  '1': 'Mode',
  '2': const [
    const {'1': 'PERSISTENT', '2': 0},
    const {'1': 'NON_PERSISTENT', '2': 1},
    const {'1': 'ALL', '2': 2},
  ],
};

/// Descriptor for `CommandGetTopicsOfNamespace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandGetTopicsOfNamespaceDescriptor = $convert.base64Decode('ChtDb21tYW5kR2V0VG9waWNzT2ZOYW1lc3BhY2USHQoKcmVxdWVzdF9pZBgBIAIoBFIJcmVxdWVzdElkEhwKCW5hbWVzcGFjZRgCIAIoCVIJbmFtZXNwYWNlEk4KBG1vZGUYAyABKA4yLi5wdWxzYXIucHJvdG8uQ29tbWFuZEdldFRvcGljc09mTmFtZXNwYWNlLk1vZGU6ClBFUlNJU1RFTlRSBG1vZGUiMwoETW9kZRIOCgpQRVJTSVNURU5UEAASEgoOTk9OX1BFUlNJU1RFTlQQARIHCgNBTEwQAg==');
@$core.Deprecated('Use commandGetTopicsOfNamespaceResponseDescriptor instead')
const CommandGetTopicsOfNamespaceResponse$json = const {
  '1': 'CommandGetTopicsOfNamespaceResponse',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'topics', '3': 2, '4': 3, '5': 9, '10': 'topics'},
  ],
};

/// Descriptor for `CommandGetTopicsOfNamespaceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandGetTopicsOfNamespaceResponseDescriptor = $convert.base64Decode('CiNDb21tYW5kR2V0VG9waWNzT2ZOYW1lc3BhY2VSZXNwb25zZRIdCgpyZXF1ZXN0X2lkGAEgAigEUglyZXF1ZXN0SWQSFgoGdG9waWNzGAIgAygJUgZ0b3BpY3M=');
@$core.Deprecated('Use commandGetSchemaDescriptor instead')
const CommandGetSchema$json = const {
  '1': 'CommandGetSchema',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'topic', '3': 2, '4': 2, '5': 9, '10': 'topic'},
    const {'1': 'schema_version', '3': 3, '4': 1, '5': 12, '10': 'schemaVersion'},
  ],
};

/// Descriptor for `CommandGetSchema`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandGetSchemaDescriptor = $convert.base64Decode('ChBDb21tYW5kR2V0U2NoZW1hEh0KCnJlcXVlc3RfaWQYASACKARSCXJlcXVlc3RJZBIUCgV0b3BpYxgCIAIoCVIFdG9waWMSJQoOc2NoZW1hX3ZlcnNpb24YAyABKAxSDXNjaGVtYVZlcnNpb24=');
@$core.Deprecated('Use commandGetSchemaResponseDescriptor instead')
const CommandGetSchemaResponse$json = const {
  '1': 'CommandGetSchemaResponse',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'error_code', '3': 2, '4': 1, '5': 14, '6': '.pulsar.proto.ServerError', '10': 'errorCode'},
    const {'1': 'error_message', '3': 3, '4': 1, '5': 9, '10': 'errorMessage'},
    const {'1': 'schema', '3': 4, '4': 1, '5': 11, '6': '.pulsar.proto.Schema', '10': 'schema'},
    const {'1': 'schema_version', '3': 5, '4': 1, '5': 12, '10': 'schemaVersion'},
  ],
};

/// Descriptor for `CommandGetSchemaResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandGetSchemaResponseDescriptor = $convert.base64Decode('ChhDb21tYW5kR2V0U2NoZW1hUmVzcG9uc2USHQoKcmVxdWVzdF9pZBgBIAIoBFIJcmVxdWVzdElkEjgKCmVycm9yX2NvZGUYAiABKA4yGS5wdWxzYXIucHJvdG8uU2VydmVyRXJyb3JSCWVycm9yQ29kZRIjCg1lcnJvcl9tZXNzYWdlGAMgASgJUgxlcnJvck1lc3NhZ2USLAoGc2NoZW1hGAQgASgLMhQucHVsc2FyLnByb3RvLlNjaGVtYVIGc2NoZW1hEiUKDnNjaGVtYV92ZXJzaW9uGAUgASgMUg1zY2hlbWFWZXJzaW9u');
@$core.Deprecated('Use commandGetOrCreateSchemaDescriptor instead')
const CommandGetOrCreateSchema$json = const {
  '1': 'CommandGetOrCreateSchema',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'topic', '3': 2, '4': 2, '5': 9, '10': 'topic'},
    const {'1': 'schema', '3': 3, '4': 2, '5': 11, '6': '.pulsar.proto.Schema', '10': 'schema'},
  ],
};

/// Descriptor for `CommandGetOrCreateSchema`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandGetOrCreateSchemaDescriptor = $convert.base64Decode('ChhDb21tYW5kR2V0T3JDcmVhdGVTY2hlbWESHQoKcmVxdWVzdF9pZBgBIAIoBFIJcmVxdWVzdElkEhQKBXRvcGljGAIgAigJUgV0b3BpYxIsCgZzY2hlbWEYAyACKAsyFC5wdWxzYXIucHJvdG8uU2NoZW1hUgZzY2hlbWE=');
@$core.Deprecated('Use commandGetOrCreateSchemaResponseDescriptor instead')
const CommandGetOrCreateSchemaResponse$json = const {
  '1': 'CommandGetOrCreateSchemaResponse',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'error_code', '3': 2, '4': 1, '5': 14, '6': '.pulsar.proto.ServerError', '10': 'errorCode'},
    const {'1': 'error_message', '3': 3, '4': 1, '5': 9, '10': 'errorMessage'},
    const {'1': 'schema_version', '3': 4, '4': 1, '5': 12, '10': 'schemaVersion'},
  ],
};

/// Descriptor for `CommandGetOrCreateSchemaResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandGetOrCreateSchemaResponseDescriptor = $convert.base64Decode('CiBDb21tYW5kR2V0T3JDcmVhdGVTY2hlbWFSZXNwb25zZRIdCgpyZXF1ZXN0X2lkGAEgAigEUglyZXF1ZXN0SWQSOAoKZXJyb3JfY29kZRgCIAEoDjIZLnB1bHNhci5wcm90by5TZXJ2ZXJFcnJvclIJZXJyb3JDb2RlEiMKDWVycm9yX21lc3NhZ2UYAyABKAlSDGVycm9yTWVzc2FnZRIlCg5zY2hlbWFfdmVyc2lvbhgEIAEoDFINc2NoZW1hVmVyc2lvbg==');
@$core.Deprecated('Use commandNewTxnDescriptor instead')
const CommandNewTxn$json = const {
  '1': 'CommandNewTxn',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'txn_ttl_seconds', '3': 2, '4': 1, '5': 4, '7': '0', '10': 'txnTtlSeconds'},
    const {'1': 'tc_id', '3': 3, '4': 1, '5': 4, '7': '0', '10': 'tcId'},
  ],
};

/// Descriptor for `CommandNewTxn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandNewTxnDescriptor = $convert.base64Decode('Cg1Db21tYW5kTmV3VHhuEh0KCnJlcXVlc3RfaWQYASACKARSCXJlcXVlc3RJZBIpCg90eG5fdHRsX3NlY29uZHMYAiABKAQ6ATBSDXR4blR0bFNlY29uZHMSFgoFdGNfaWQYAyABKAQ6ATBSBHRjSWQ=');
@$core.Deprecated('Use commandNewTxnResponseDescriptor instead')
const CommandNewTxnResponse$json = const {
  '1': 'CommandNewTxnResponse',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'txnid_least_bits', '3': 2, '4': 1, '5': 4, '7': '0', '10': 'txnidLeastBits'},
    const {'1': 'txnid_most_bits', '3': 3, '4': 1, '5': 4, '7': '0', '10': 'txnidMostBits'},
    const {'1': 'error', '3': 4, '4': 1, '5': 14, '6': '.pulsar.proto.ServerError', '10': 'error'},
    const {'1': 'message', '3': 5, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `CommandNewTxnResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandNewTxnResponseDescriptor = $convert.base64Decode('ChVDb21tYW5kTmV3VHhuUmVzcG9uc2USHQoKcmVxdWVzdF9pZBgBIAIoBFIJcmVxdWVzdElkEisKEHR4bmlkX2xlYXN0X2JpdHMYAiABKAQ6ATBSDnR4bmlkTGVhc3RCaXRzEikKD3R4bmlkX21vc3RfYml0cxgDIAEoBDoBMFINdHhuaWRNb3N0Qml0cxIvCgVlcnJvchgEIAEoDjIZLnB1bHNhci5wcm90by5TZXJ2ZXJFcnJvclIFZXJyb3ISGAoHbWVzc2FnZRgFIAEoCVIHbWVzc2FnZQ==');
@$core.Deprecated('Use commandAddPartitionToTxnDescriptor instead')
const CommandAddPartitionToTxn$json = const {
  '1': 'CommandAddPartitionToTxn',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'txnid_least_bits', '3': 2, '4': 1, '5': 4, '7': '0', '10': 'txnidLeastBits'},
    const {'1': 'txnid_most_bits', '3': 3, '4': 1, '5': 4, '7': '0', '10': 'txnidMostBits'},
    const {'1': 'partitions', '3': 4, '4': 3, '5': 9, '10': 'partitions'},
  ],
};

/// Descriptor for `CommandAddPartitionToTxn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandAddPartitionToTxnDescriptor = $convert.base64Decode('ChhDb21tYW5kQWRkUGFydGl0aW9uVG9UeG4SHQoKcmVxdWVzdF9pZBgBIAIoBFIJcmVxdWVzdElkEisKEHR4bmlkX2xlYXN0X2JpdHMYAiABKAQ6ATBSDnR4bmlkTGVhc3RCaXRzEikKD3R4bmlkX21vc3RfYml0cxgDIAEoBDoBMFINdHhuaWRNb3N0Qml0cxIeCgpwYXJ0aXRpb25zGAQgAygJUgpwYXJ0aXRpb25z');
@$core.Deprecated('Use commandAddPartitionToTxnResponseDescriptor instead')
const CommandAddPartitionToTxnResponse$json = const {
  '1': 'CommandAddPartitionToTxnResponse',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'txnid_least_bits', '3': 2, '4': 1, '5': 4, '7': '0', '10': 'txnidLeastBits'},
    const {'1': 'txnid_most_bits', '3': 3, '4': 1, '5': 4, '7': '0', '10': 'txnidMostBits'},
    const {'1': 'error', '3': 4, '4': 1, '5': 14, '6': '.pulsar.proto.ServerError', '10': 'error'},
    const {'1': 'message', '3': 5, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `CommandAddPartitionToTxnResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandAddPartitionToTxnResponseDescriptor = $convert.base64Decode('CiBDb21tYW5kQWRkUGFydGl0aW9uVG9UeG5SZXNwb25zZRIdCgpyZXF1ZXN0X2lkGAEgAigEUglyZXF1ZXN0SWQSKwoQdHhuaWRfbGVhc3RfYml0cxgCIAEoBDoBMFIOdHhuaWRMZWFzdEJpdHMSKQoPdHhuaWRfbW9zdF9iaXRzGAMgASgEOgEwUg10eG5pZE1vc3RCaXRzEi8KBWVycm9yGAQgASgOMhkucHVsc2FyLnByb3RvLlNlcnZlckVycm9yUgVlcnJvchIYCgdtZXNzYWdlGAUgASgJUgdtZXNzYWdl');
@$core.Deprecated('Use subscriptionDescriptor instead')
const Subscription$json = const {
  '1': 'Subscription',
  '2': const [
    const {'1': 'topic', '3': 1, '4': 2, '5': 9, '10': 'topic'},
    const {'1': 'subscription', '3': 2, '4': 2, '5': 9, '10': 'subscription'},
  ],
};

/// Descriptor for `Subscription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscriptionDescriptor = $convert.base64Decode('CgxTdWJzY3JpcHRpb24SFAoFdG9waWMYASACKAlSBXRvcGljEiIKDHN1YnNjcmlwdGlvbhgCIAIoCVIMc3Vic2NyaXB0aW9u');
@$core.Deprecated('Use commandAddSubscriptionToTxnDescriptor instead')
const CommandAddSubscriptionToTxn$json = const {
  '1': 'CommandAddSubscriptionToTxn',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'txnid_least_bits', '3': 2, '4': 1, '5': 4, '7': '0', '10': 'txnidLeastBits'},
    const {'1': 'txnid_most_bits', '3': 3, '4': 1, '5': 4, '7': '0', '10': 'txnidMostBits'},
    const {'1': 'subscription', '3': 4, '4': 3, '5': 11, '6': '.pulsar.proto.Subscription', '10': 'subscription'},
  ],
};

/// Descriptor for `CommandAddSubscriptionToTxn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandAddSubscriptionToTxnDescriptor = $convert.base64Decode('ChtDb21tYW5kQWRkU3Vic2NyaXB0aW9uVG9UeG4SHQoKcmVxdWVzdF9pZBgBIAIoBFIJcmVxdWVzdElkEisKEHR4bmlkX2xlYXN0X2JpdHMYAiABKAQ6ATBSDnR4bmlkTGVhc3RCaXRzEikKD3R4bmlkX21vc3RfYml0cxgDIAEoBDoBMFINdHhuaWRNb3N0Qml0cxI+CgxzdWJzY3JpcHRpb24YBCADKAsyGi5wdWxzYXIucHJvdG8uU3Vic2NyaXB0aW9uUgxzdWJzY3JpcHRpb24=');
@$core.Deprecated('Use commandAddSubscriptionToTxnResponseDescriptor instead')
const CommandAddSubscriptionToTxnResponse$json = const {
  '1': 'CommandAddSubscriptionToTxnResponse',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'txnid_least_bits', '3': 2, '4': 1, '5': 4, '7': '0', '10': 'txnidLeastBits'},
    const {'1': 'txnid_most_bits', '3': 3, '4': 1, '5': 4, '7': '0', '10': 'txnidMostBits'},
    const {'1': 'error', '3': 4, '4': 1, '5': 14, '6': '.pulsar.proto.ServerError', '10': 'error'},
    const {'1': 'message', '3': 5, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `CommandAddSubscriptionToTxnResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandAddSubscriptionToTxnResponseDescriptor = $convert.base64Decode('CiNDb21tYW5kQWRkU3Vic2NyaXB0aW9uVG9UeG5SZXNwb25zZRIdCgpyZXF1ZXN0X2lkGAEgAigEUglyZXF1ZXN0SWQSKwoQdHhuaWRfbGVhc3RfYml0cxgCIAEoBDoBMFIOdHhuaWRMZWFzdEJpdHMSKQoPdHhuaWRfbW9zdF9iaXRzGAMgASgEOgEwUg10eG5pZE1vc3RCaXRzEi8KBWVycm9yGAQgASgOMhkucHVsc2FyLnByb3RvLlNlcnZlckVycm9yUgVlcnJvchIYCgdtZXNzYWdlGAUgASgJUgdtZXNzYWdl');
@$core.Deprecated('Use commandEndTxnDescriptor instead')
const CommandEndTxn$json = const {
  '1': 'CommandEndTxn',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'txnid_least_bits', '3': 2, '4': 1, '5': 4, '7': '0', '10': 'txnidLeastBits'},
    const {'1': 'txnid_most_bits', '3': 3, '4': 1, '5': 4, '7': '0', '10': 'txnidMostBits'},
    const {'1': 'txn_action', '3': 4, '4': 1, '5': 14, '6': '.pulsar.proto.TxnAction', '10': 'txnAction'},
  ],
};

/// Descriptor for `CommandEndTxn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandEndTxnDescriptor = $convert.base64Decode('Cg1Db21tYW5kRW5kVHhuEh0KCnJlcXVlc3RfaWQYASACKARSCXJlcXVlc3RJZBIrChB0eG5pZF9sZWFzdF9iaXRzGAIgASgEOgEwUg50eG5pZExlYXN0Qml0cxIpCg90eG5pZF9tb3N0X2JpdHMYAyABKAQ6ATBSDXR4bmlkTW9zdEJpdHMSNgoKdHhuX2FjdGlvbhgEIAEoDjIXLnB1bHNhci5wcm90by5UeG5BY3Rpb25SCXR4bkFjdGlvbg==');
@$core.Deprecated('Use commandEndTxnResponseDescriptor instead')
const CommandEndTxnResponse$json = const {
  '1': 'CommandEndTxnResponse',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'txnid_least_bits', '3': 2, '4': 1, '5': 4, '7': '0', '10': 'txnidLeastBits'},
    const {'1': 'txnid_most_bits', '3': 3, '4': 1, '5': 4, '7': '0', '10': 'txnidMostBits'},
    const {'1': 'error', '3': 4, '4': 1, '5': 14, '6': '.pulsar.proto.ServerError', '10': 'error'},
    const {'1': 'message', '3': 5, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `CommandEndTxnResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandEndTxnResponseDescriptor = $convert.base64Decode('ChVDb21tYW5kRW5kVHhuUmVzcG9uc2USHQoKcmVxdWVzdF9pZBgBIAIoBFIJcmVxdWVzdElkEisKEHR4bmlkX2xlYXN0X2JpdHMYAiABKAQ6ATBSDnR4bmlkTGVhc3RCaXRzEikKD3R4bmlkX21vc3RfYml0cxgDIAEoBDoBMFINdHhuaWRNb3N0Qml0cxIvCgVlcnJvchgEIAEoDjIZLnB1bHNhci5wcm90by5TZXJ2ZXJFcnJvclIFZXJyb3ISGAoHbWVzc2FnZRgFIAEoCVIHbWVzc2FnZQ==');
@$core.Deprecated('Use commandEndTxnOnPartitionDescriptor instead')
const CommandEndTxnOnPartition$json = const {
  '1': 'CommandEndTxnOnPartition',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'txnid_least_bits', '3': 2, '4': 1, '5': 4, '7': '0', '10': 'txnidLeastBits'},
    const {'1': 'txnid_most_bits', '3': 3, '4': 1, '5': 4, '7': '0', '10': 'txnidMostBits'},
    const {'1': 'topic', '3': 4, '4': 1, '5': 9, '10': 'topic'},
    const {'1': 'txn_action', '3': 5, '4': 1, '5': 14, '6': '.pulsar.proto.TxnAction', '10': 'txnAction'},
    const {'1': 'txnid_least_bits_of_low_watermark', '3': 6, '4': 1, '5': 4, '10': 'txnidLeastBitsOfLowWatermark'},
  ],
};

/// Descriptor for `CommandEndTxnOnPartition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandEndTxnOnPartitionDescriptor = $convert.base64Decode('ChhDb21tYW5kRW5kVHhuT25QYXJ0aXRpb24SHQoKcmVxdWVzdF9pZBgBIAIoBFIJcmVxdWVzdElkEisKEHR4bmlkX2xlYXN0X2JpdHMYAiABKAQ6ATBSDnR4bmlkTGVhc3RCaXRzEikKD3R4bmlkX21vc3RfYml0cxgDIAEoBDoBMFINdHhuaWRNb3N0Qml0cxIUCgV0b3BpYxgEIAEoCVIFdG9waWMSNgoKdHhuX2FjdGlvbhgFIAEoDjIXLnB1bHNhci5wcm90by5UeG5BY3Rpb25SCXR4bkFjdGlvbhJHCiF0eG5pZF9sZWFzdF9iaXRzX29mX2xvd193YXRlcm1hcmsYBiABKARSHHR4bmlkTGVhc3RCaXRzT2ZMb3dXYXRlcm1hcms=');
@$core.Deprecated('Use commandEndTxnOnPartitionResponseDescriptor instead')
const CommandEndTxnOnPartitionResponse$json = const {
  '1': 'CommandEndTxnOnPartitionResponse',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'txnid_least_bits', '3': 2, '4': 1, '5': 4, '7': '0', '10': 'txnidLeastBits'},
    const {'1': 'txnid_most_bits', '3': 3, '4': 1, '5': 4, '7': '0', '10': 'txnidMostBits'},
    const {'1': 'error', '3': 4, '4': 1, '5': 14, '6': '.pulsar.proto.ServerError', '10': 'error'},
    const {'1': 'message', '3': 5, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `CommandEndTxnOnPartitionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandEndTxnOnPartitionResponseDescriptor = $convert.base64Decode('CiBDb21tYW5kRW5kVHhuT25QYXJ0aXRpb25SZXNwb25zZRIdCgpyZXF1ZXN0X2lkGAEgAigEUglyZXF1ZXN0SWQSKwoQdHhuaWRfbGVhc3RfYml0cxgCIAEoBDoBMFIOdHhuaWRMZWFzdEJpdHMSKQoPdHhuaWRfbW9zdF9iaXRzGAMgASgEOgEwUg10eG5pZE1vc3RCaXRzEi8KBWVycm9yGAQgASgOMhkucHVsc2FyLnByb3RvLlNlcnZlckVycm9yUgVlcnJvchIYCgdtZXNzYWdlGAUgASgJUgdtZXNzYWdl');
@$core.Deprecated('Use commandEndTxnOnSubscriptionDescriptor instead')
const CommandEndTxnOnSubscription$json = const {
  '1': 'CommandEndTxnOnSubscription',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'txnid_least_bits', '3': 2, '4': 1, '5': 4, '7': '0', '10': 'txnidLeastBits'},
    const {'1': 'txnid_most_bits', '3': 3, '4': 1, '5': 4, '7': '0', '10': 'txnidMostBits'},
    const {'1': 'subscription', '3': 4, '4': 1, '5': 11, '6': '.pulsar.proto.Subscription', '10': 'subscription'},
    const {'1': 'txn_action', '3': 5, '4': 1, '5': 14, '6': '.pulsar.proto.TxnAction', '10': 'txnAction'},
    const {'1': 'txnid_least_bits_of_low_watermark', '3': 6, '4': 1, '5': 4, '10': 'txnidLeastBitsOfLowWatermark'},
  ],
};

/// Descriptor for `CommandEndTxnOnSubscription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandEndTxnOnSubscriptionDescriptor = $convert.base64Decode('ChtDb21tYW5kRW5kVHhuT25TdWJzY3JpcHRpb24SHQoKcmVxdWVzdF9pZBgBIAIoBFIJcmVxdWVzdElkEisKEHR4bmlkX2xlYXN0X2JpdHMYAiABKAQ6ATBSDnR4bmlkTGVhc3RCaXRzEikKD3R4bmlkX21vc3RfYml0cxgDIAEoBDoBMFINdHhuaWRNb3N0Qml0cxI+CgxzdWJzY3JpcHRpb24YBCABKAsyGi5wdWxzYXIucHJvdG8uU3Vic2NyaXB0aW9uUgxzdWJzY3JpcHRpb24SNgoKdHhuX2FjdGlvbhgFIAEoDjIXLnB1bHNhci5wcm90by5UeG5BY3Rpb25SCXR4bkFjdGlvbhJHCiF0eG5pZF9sZWFzdF9iaXRzX29mX2xvd193YXRlcm1hcmsYBiABKARSHHR4bmlkTGVhc3RCaXRzT2ZMb3dXYXRlcm1hcms=');
@$core.Deprecated('Use commandEndTxnOnSubscriptionResponseDescriptor instead')
const CommandEndTxnOnSubscriptionResponse$json = const {
  '1': 'CommandEndTxnOnSubscriptionResponse',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 4, '10': 'requestId'},
    const {'1': 'txnid_least_bits', '3': 2, '4': 1, '5': 4, '7': '0', '10': 'txnidLeastBits'},
    const {'1': 'txnid_most_bits', '3': 3, '4': 1, '5': 4, '7': '0', '10': 'txnidMostBits'},
    const {'1': 'error', '3': 4, '4': 1, '5': 14, '6': '.pulsar.proto.ServerError', '10': 'error'},
    const {'1': 'message', '3': 5, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `CommandEndTxnOnSubscriptionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandEndTxnOnSubscriptionResponseDescriptor = $convert.base64Decode('CiNDb21tYW5kRW5kVHhuT25TdWJzY3JpcHRpb25SZXNwb25zZRIdCgpyZXF1ZXN0X2lkGAEgAigEUglyZXF1ZXN0SWQSKwoQdHhuaWRfbGVhc3RfYml0cxgCIAEoBDoBMFIOdHhuaWRMZWFzdEJpdHMSKQoPdHhuaWRfbW9zdF9iaXRzGAMgASgEOgEwUg10eG5pZE1vc3RCaXRzEi8KBWVycm9yGAQgASgOMhkucHVsc2FyLnByb3RvLlNlcnZlckVycm9yUgVlcnJvchIYCgdtZXNzYWdlGAUgASgJUgdtZXNzYWdl');
@$core.Deprecated('Use baseCommandDescriptor instead')
const BaseCommand$json = const {
  '1': 'BaseCommand',
  '2': const [
    const {'1': 'type', '3': 1, '4': 2, '5': 14, '6': '.pulsar.proto.BaseCommand.Type', '10': 'type'},
    const {'1': 'connect', '3': 2, '4': 1, '5': 11, '6': '.pulsar.proto.CommandConnect', '10': 'connect'},
    const {'1': 'connected', '3': 3, '4': 1, '5': 11, '6': '.pulsar.proto.CommandConnected', '10': 'connected'},
    const {'1': 'subscribe', '3': 4, '4': 1, '5': 11, '6': '.pulsar.proto.CommandSubscribe', '10': 'subscribe'},
    const {'1': 'producer', '3': 5, '4': 1, '5': 11, '6': '.pulsar.proto.CommandProducer', '10': 'producer'},
    const {'1': 'send', '3': 6, '4': 1, '5': 11, '6': '.pulsar.proto.CommandSend', '10': 'send'},
    const {'1': 'send_receipt', '3': 7, '4': 1, '5': 11, '6': '.pulsar.proto.CommandSendReceipt', '10': 'sendReceipt'},
    const {'1': 'send_error', '3': 8, '4': 1, '5': 11, '6': '.pulsar.proto.CommandSendError', '10': 'sendError'},
    const {'1': 'message', '3': 9, '4': 1, '5': 11, '6': '.pulsar.proto.CommandMessage', '10': 'message'},
    const {'1': 'ack', '3': 10, '4': 1, '5': 11, '6': '.pulsar.proto.CommandAck', '10': 'ack'},
    const {'1': 'flow', '3': 11, '4': 1, '5': 11, '6': '.pulsar.proto.CommandFlow', '10': 'flow'},
    const {'1': 'unsubscribe', '3': 12, '4': 1, '5': 11, '6': '.pulsar.proto.CommandUnsubscribe', '10': 'unsubscribe'},
    const {'1': 'success', '3': 13, '4': 1, '5': 11, '6': '.pulsar.proto.CommandSuccess', '10': 'success'},
    const {'1': 'error', '3': 14, '4': 1, '5': 11, '6': '.pulsar.proto.CommandError', '10': 'error'},
    const {'1': 'close_producer', '3': 15, '4': 1, '5': 11, '6': '.pulsar.proto.CommandCloseProducer', '10': 'closeProducer'},
    const {'1': 'close_consumer', '3': 16, '4': 1, '5': 11, '6': '.pulsar.proto.CommandCloseConsumer', '10': 'closeConsumer'},
    const {'1': 'producer_success', '3': 17, '4': 1, '5': 11, '6': '.pulsar.proto.CommandProducerSuccess', '10': 'producerSuccess'},
    const {'1': 'ping', '3': 18, '4': 1, '5': 11, '6': '.pulsar.proto.CommandPing', '10': 'ping'},
    const {'1': 'pong', '3': 19, '4': 1, '5': 11, '6': '.pulsar.proto.CommandPong', '10': 'pong'},
    const {'1': 'redeliverUnacknowledgedMessages', '3': 20, '4': 1, '5': 11, '6': '.pulsar.proto.CommandRedeliverUnacknowledgedMessages', '10': 'redeliverUnacknowledgedMessages'},
    const {'1': 'partitionMetadata', '3': 21, '4': 1, '5': 11, '6': '.pulsar.proto.CommandPartitionedTopicMetadata', '10': 'partitionMetadata'},
    const {'1': 'partitionMetadataResponse', '3': 22, '4': 1, '5': 11, '6': '.pulsar.proto.CommandPartitionedTopicMetadataResponse', '10': 'partitionMetadataResponse'},
    const {'1': 'lookupTopic', '3': 23, '4': 1, '5': 11, '6': '.pulsar.proto.CommandLookupTopic', '10': 'lookupTopic'},
    const {'1': 'lookupTopicResponse', '3': 24, '4': 1, '5': 11, '6': '.pulsar.proto.CommandLookupTopicResponse', '10': 'lookupTopicResponse'},
    const {'1': 'consumerStats', '3': 25, '4': 1, '5': 11, '6': '.pulsar.proto.CommandConsumerStats', '10': 'consumerStats'},
    const {'1': 'consumerStatsResponse', '3': 26, '4': 1, '5': 11, '6': '.pulsar.proto.CommandConsumerStatsResponse', '10': 'consumerStatsResponse'},
    const {'1': 'reachedEndOfTopic', '3': 27, '4': 1, '5': 11, '6': '.pulsar.proto.CommandReachedEndOfTopic', '10': 'reachedEndOfTopic'},
    const {'1': 'seek', '3': 28, '4': 1, '5': 11, '6': '.pulsar.proto.CommandSeek', '10': 'seek'},
    const {'1': 'getLastMessageId', '3': 29, '4': 1, '5': 11, '6': '.pulsar.proto.CommandGetLastMessageId', '10': 'getLastMessageId'},
    const {'1': 'getLastMessageIdResponse', '3': 30, '4': 1, '5': 11, '6': '.pulsar.proto.CommandGetLastMessageIdResponse', '10': 'getLastMessageIdResponse'},
    const {'1': 'active_consumer_change', '3': 31, '4': 1, '5': 11, '6': '.pulsar.proto.CommandActiveConsumerChange', '10': 'activeConsumerChange'},
    const {'1': 'getTopicsOfNamespace', '3': 32, '4': 1, '5': 11, '6': '.pulsar.proto.CommandGetTopicsOfNamespace', '10': 'getTopicsOfNamespace'},
    const {'1': 'getTopicsOfNamespaceResponse', '3': 33, '4': 1, '5': 11, '6': '.pulsar.proto.CommandGetTopicsOfNamespaceResponse', '10': 'getTopicsOfNamespaceResponse'},
    const {'1': 'getSchema', '3': 34, '4': 1, '5': 11, '6': '.pulsar.proto.CommandGetSchema', '10': 'getSchema'},
    const {'1': 'getSchemaResponse', '3': 35, '4': 1, '5': 11, '6': '.pulsar.proto.CommandGetSchemaResponse', '10': 'getSchemaResponse'},
    const {'1': 'authChallenge', '3': 36, '4': 1, '5': 11, '6': '.pulsar.proto.CommandAuthChallenge', '10': 'authChallenge'},
    const {'1': 'authResponse', '3': 37, '4': 1, '5': 11, '6': '.pulsar.proto.CommandAuthResponse', '10': 'authResponse'},
    const {'1': 'ackResponse', '3': 38, '4': 1, '5': 11, '6': '.pulsar.proto.CommandAckResponse', '10': 'ackResponse'},
    const {'1': 'getOrCreateSchema', '3': 39, '4': 1, '5': 11, '6': '.pulsar.proto.CommandGetOrCreateSchema', '10': 'getOrCreateSchema'},
    const {'1': 'getOrCreateSchemaResponse', '3': 40, '4': 1, '5': 11, '6': '.pulsar.proto.CommandGetOrCreateSchemaResponse', '10': 'getOrCreateSchemaResponse'},
    const {'1': 'newTxn', '3': 50, '4': 1, '5': 11, '6': '.pulsar.proto.CommandNewTxn', '10': 'newTxn'},
    const {'1': 'newTxnResponse', '3': 51, '4': 1, '5': 11, '6': '.pulsar.proto.CommandNewTxnResponse', '10': 'newTxnResponse'},
    const {'1': 'addPartitionToTxn', '3': 52, '4': 1, '5': 11, '6': '.pulsar.proto.CommandAddPartitionToTxn', '10': 'addPartitionToTxn'},
    const {'1': 'addPartitionToTxnResponse', '3': 53, '4': 1, '5': 11, '6': '.pulsar.proto.CommandAddPartitionToTxnResponse', '10': 'addPartitionToTxnResponse'},
    const {'1': 'addSubscriptionToTxn', '3': 54, '4': 1, '5': 11, '6': '.pulsar.proto.CommandAddSubscriptionToTxn', '10': 'addSubscriptionToTxn'},
    const {'1': 'addSubscriptionToTxnResponse', '3': 55, '4': 1, '5': 11, '6': '.pulsar.proto.CommandAddSubscriptionToTxnResponse', '10': 'addSubscriptionToTxnResponse'},
    const {'1': 'endTxn', '3': 56, '4': 1, '5': 11, '6': '.pulsar.proto.CommandEndTxn', '10': 'endTxn'},
    const {'1': 'endTxnResponse', '3': 57, '4': 1, '5': 11, '6': '.pulsar.proto.CommandEndTxnResponse', '10': 'endTxnResponse'},
    const {'1': 'endTxnOnPartition', '3': 58, '4': 1, '5': 11, '6': '.pulsar.proto.CommandEndTxnOnPartition', '10': 'endTxnOnPartition'},
    const {'1': 'endTxnOnPartitionResponse', '3': 59, '4': 1, '5': 11, '6': '.pulsar.proto.CommandEndTxnOnPartitionResponse', '10': 'endTxnOnPartitionResponse'},
    const {'1': 'endTxnOnSubscription', '3': 60, '4': 1, '5': 11, '6': '.pulsar.proto.CommandEndTxnOnSubscription', '10': 'endTxnOnSubscription'},
    const {'1': 'endTxnOnSubscriptionResponse', '3': 61, '4': 1, '5': 11, '6': '.pulsar.proto.CommandEndTxnOnSubscriptionResponse', '10': 'endTxnOnSubscriptionResponse'},
  ],
  '4': const [BaseCommand_Type$json],
};

@$core.Deprecated('Use baseCommandDescriptor instead')
const BaseCommand_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'CONNECT', '2': 2},
    const {'1': 'CONNECTED', '2': 3},
    const {'1': 'SUBSCRIBE', '2': 4},
    const {'1': 'PRODUCER', '2': 5},
    const {'1': 'SEND', '2': 6},
    const {'1': 'SEND_RECEIPT', '2': 7},
    const {'1': 'SEND_ERROR', '2': 8},
    const {'1': 'MESSAGE', '2': 9},
    const {'1': 'ACK', '2': 10},
    const {'1': 'FLOW', '2': 11},
    const {'1': 'UNSUBSCRIBE', '2': 12},
    const {'1': 'SUCCESS', '2': 13},
    const {'1': 'ERROR', '2': 14},
    const {'1': 'CLOSE_PRODUCER', '2': 15},
    const {'1': 'CLOSE_CONSUMER', '2': 16},
    const {'1': 'PRODUCER_SUCCESS', '2': 17},
    const {'1': 'PING', '2': 18},
    const {'1': 'PONG', '2': 19},
    const {'1': 'REDELIVER_UNACKNOWLEDGED_MESSAGES', '2': 20},
    const {'1': 'PARTITIONED_METADATA', '2': 21},
    const {'1': 'PARTITIONED_METADATA_RESPONSE', '2': 22},
    const {'1': 'LOOKUP', '2': 23},
    const {'1': 'LOOKUP_RESPONSE', '2': 24},
    const {'1': 'CONSUMER_STATS', '2': 25},
    const {'1': 'CONSUMER_STATS_RESPONSE', '2': 26},
    const {'1': 'REACHED_END_OF_TOPIC', '2': 27},
    const {'1': 'SEEK', '2': 28},
    const {'1': 'GET_LAST_MESSAGE_ID', '2': 29},
    const {'1': 'GET_LAST_MESSAGE_ID_RESPONSE', '2': 30},
    const {'1': 'ACTIVE_CONSUMER_CHANGE', '2': 31},
    const {'1': 'GET_TOPICS_OF_NAMESPACE', '2': 32},
    const {'1': 'GET_TOPICS_OF_NAMESPACE_RESPONSE', '2': 33},
    const {'1': 'GET_SCHEMA', '2': 34},
    const {'1': 'GET_SCHEMA_RESPONSE', '2': 35},
    const {'1': 'AUTH_CHALLENGE', '2': 36},
    const {'1': 'AUTH_RESPONSE', '2': 37},
    const {'1': 'ACK_RESPONSE', '2': 38},
    const {'1': 'GET_OR_CREATE_SCHEMA', '2': 39},
    const {'1': 'GET_OR_CREATE_SCHEMA_RESPONSE', '2': 40},
    const {'1': 'NEW_TXN', '2': 50},
    const {'1': 'NEW_TXN_RESPONSE', '2': 51},
    const {'1': 'ADD_PARTITION_TO_TXN', '2': 52},
    const {'1': 'ADD_PARTITION_TO_TXN_RESPONSE', '2': 53},
    const {'1': 'ADD_SUBSCRIPTION_TO_TXN', '2': 54},
    const {'1': 'ADD_SUBSCRIPTION_TO_TXN_RESPONSE', '2': 55},
    const {'1': 'END_TXN', '2': 56},
    const {'1': 'END_TXN_RESPONSE', '2': 57},
    const {'1': 'END_TXN_ON_PARTITION', '2': 58},
    const {'1': 'END_TXN_ON_PARTITION_RESPONSE', '2': 59},
    const {'1': 'END_TXN_ON_SUBSCRIPTION', '2': 60},
    const {'1': 'END_TXN_ON_SUBSCRIPTION_RESPONSE', '2': 61},
  ],
};

/// Descriptor for `BaseCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List baseCommandDescriptor = $convert.base64Decode('CgtCYXNlQ29tbWFuZBIyCgR0eXBlGAEgAigOMh4ucHVsc2FyLnByb3RvLkJhc2VDb21tYW5kLlR5cGVSBHR5cGUSNgoHY29ubmVjdBgCIAEoCzIcLnB1bHNhci5wcm90by5Db21tYW5kQ29ubmVjdFIHY29ubmVjdBI8Cgljb25uZWN0ZWQYAyABKAsyHi5wdWxzYXIucHJvdG8uQ29tbWFuZENvbm5lY3RlZFIJY29ubmVjdGVkEjwKCXN1YnNjcmliZRgEIAEoCzIeLnB1bHNhci5wcm90by5Db21tYW5kU3Vic2NyaWJlUglzdWJzY3JpYmUSOQoIcHJvZHVjZXIYBSABKAsyHS5wdWxzYXIucHJvdG8uQ29tbWFuZFByb2R1Y2VyUghwcm9kdWNlchItCgRzZW5kGAYgASgLMhkucHVsc2FyLnByb3RvLkNvbW1hbmRTZW5kUgRzZW5kEkMKDHNlbmRfcmVjZWlwdBgHIAEoCzIgLnB1bHNhci5wcm90by5Db21tYW5kU2VuZFJlY2VpcHRSC3NlbmRSZWNlaXB0Ej0KCnNlbmRfZXJyb3IYCCABKAsyHi5wdWxzYXIucHJvdG8uQ29tbWFuZFNlbmRFcnJvclIJc2VuZEVycm9yEjYKB21lc3NhZ2UYCSABKAsyHC5wdWxzYXIucHJvdG8uQ29tbWFuZE1lc3NhZ2VSB21lc3NhZ2USKgoDYWNrGAogASgLMhgucHVsc2FyLnByb3RvLkNvbW1hbmRBY2tSA2FjaxItCgRmbG93GAsgASgLMhkucHVsc2FyLnByb3RvLkNvbW1hbmRGbG93UgRmbG93EkIKC3Vuc3Vic2NyaWJlGAwgASgLMiAucHVsc2FyLnByb3RvLkNvbW1hbmRVbnN1YnNjcmliZVILdW5zdWJzY3JpYmUSNgoHc3VjY2VzcxgNIAEoCzIcLnB1bHNhci5wcm90by5Db21tYW5kU3VjY2Vzc1IHc3VjY2VzcxIwCgVlcnJvchgOIAEoCzIaLnB1bHNhci5wcm90by5Db21tYW5kRXJyb3JSBWVycm9yEkkKDmNsb3NlX3Byb2R1Y2VyGA8gASgLMiIucHVsc2FyLnByb3RvLkNvbW1hbmRDbG9zZVByb2R1Y2VyUg1jbG9zZVByb2R1Y2VyEkkKDmNsb3NlX2NvbnN1bWVyGBAgASgLMiIucHVsc2FyLnByb3RvLkNvbW1hbmRDbG9zZUNvbnN1bWVyUg1jbG9zZUNvbnN1bWVyEk8KEHByb2R1Y2VyX3N1Y2Nlc3MYESABKAsyJC5wdWxzYXIucHJvdG8uQ29tbWFuZFByb2R1Y2VyU3VjY2Vzc1IPcHJvZHVjZXJTdWNjZXNzEi0KBHBpbmcYEiABKAsyGS5wdWxzYXIucHJvdG8uQ29tbWFuZFBpbmdSBHBpbmcSLQoEcG9uZxgTIAEoCzIZLnB1bHNhci5wcm90by5Db21tYW5kUG9uZ1IEcG9uZxJ+Ch9yZWRlbGl2ZXJVbmFja25vd2xlZGdlZE1lc3NhZ2VzGBQgASgLMjQucHVsc2FyLnByb3RvLkNvbW1hbmRSZWRlbGl2ZXJVbmFja25vd2xlZGdlZE1lc3NhZ2VzUh9yZWRlbGl2ZXJVbmFja25vd2xlZGdlZE1lc3NhZ2VzElsKEXBhcnRpdGlvbk1ldGFkYXRhGBUgASgLMi0ucHVsc2FyLnByb3RvLkNvbW1hbmRQYXJ0aXRpb25lZFRvcGljTWV0YWRhdGFSEXBhcnRpdGlvbk1ldGFkYXRhEnMKGXBhcnRpdGlvbk1ldGFkYXRhUmVzcG9uc2UYFiABKAsyNS5wdWxzYXIucHJvdG8uQ29tbWFuZFBhcnRpdGlvbmVkVG9waWNNZXRhZGF0YVJlc3BvbnNlUhlwYXJ0aXRpb25NZXRhZGF0YVJlc3BvbnNlEkIKC2xvb2t1cFRvcGljGBcgASgLMiAucHVsc2FyLnByb3RvLkNvbW1hbmRMb29rdXBUb3BpY1ILbG9va3VwVG9waWMSWgoTbG9va3VwVG9waWNSZXNwb25zZRgYIAEoCzIoLnB1bHNhci5wcm90by5Db21tYW5kTG9va3VwVG9waWNSZXNwb25zZVITbG9va3VwVG9waWNSZXNwb25zZRJICg1jb25zdW1lclN0YXRzGBkgASgLMiIucHVsc2FyLnByb3RvLkNvbW1hbmRDb25zdW1lclN0YXRzUg1jb25zdW1lclN0YXRzEmAKFWNvbnN1bWVyU3RhdHNSZXNwb25zZRgaIAEoCzIqLnB1bHNhci5wcm90by5Db21tYW5kQ29uc3VtZXJTdGF0c1Jlc3BvbnNlUhVjb25zdW1lclN0YXRzUmVzcG9uc2USVAoRcmVhY2hlZEVuZE9mVG9waWMYGyABKAsyJi5wdWxzYXIucHJvdG8uQ29tbWFuZFJlYWNoZWRFbmRPZlRvcGljUhFyZWFjaGVkRW5kT2ZUb3BpYxItCgRzZWVrGBwgASgLMhkucHVsc2FyLnByb3RvLkNvbW1hbmRTZWVrUgRzZWVrElEKEGdldExhc3RNZXNzYWdlSWQYHSABKAsyJS5wdWxzYXIucHJvdG8uQ29tbWFuZEdldExhc3RNZXNzYWdlSWRSEGdldExhc3RNZXNzYWdlSWQSaQoYZ2V0TGFzdE1lc3NhZ2VJZFJlc3BvbnNlGB4gASgLMi0ucHVsc2FyLnByb3RvLkNvbW1hbmRHZXRMYXN0TWVzc2FnZUlkUmVzcG9uc2VSGGdldExhc3RNZXNzYWdlSWRSZXNwb25zZRJfChZhY3RpdmVfY29uc3VtZXJfY2hhbmdlGB8gASgLMikucHVsc2FyLnByb3RvLkNvbW1hbmRBY3RpdmVDb25zdW1lckNoYW5nZVIUYWN0aXZlQ29uc3VtZXJDaGFuZ2USXQoUZ2V0VG9waWNzT2ZOYW1lc3BhY2UYICABKAsyKS5wdWxzYXIucHJvdG8uQ29tbWFuZEdldFRvcGljc09mTmFtZXNwYWNlUhRnZXRUb3BpY3NPZk5hbWVzcGFjZRJ1ChxnZXRUb3BpY3NPZk5hbWVzcGFjZVJlc3BvbnNlGCEgASgLMjEucHVsc2FyLnByb3RvLkNvbW1hbmRHZXRUb3BpY3NPZk5hbWVzcGFjZVJlc3BvbnNlUhxnZXRUb3BpY3NPZk5hbWVzcGFjZVJlc3BvbnNlEjwKCWdldFNjaGVtYRgiIAEoCzIeLnB1bHNhci5wcm90by5Db21tYW5kR2V0U2NoZW1hUglnZXRTY2hlbWESVAoRZ2V0U2NoZW1hUmVzcG9uc2UYIyABKAsyJi5wdWxzYXIucHJvdG8uQ29tbWFuZEdldFNjaGVtYVJlc3BvbnNlUhFnZXRTY2hlbWFSZXNwb25zZRJICg1hdXRoQ2hhbGxlbmdlGCQgASgLMiIucHVsc2FyLnByb3RvLkNvbW1hbmRBdXRoQ2hhbGxlbmdlUg1hdXRoQ2hhbGxlbmdlEkUKDGF1dGhSZXNwb25zZRglIAEoCzIhLnB1bHNhci5wcm90by5Db21tYW5kQXV0aFJlc3BvbnNlUgxhdXRoUmVzcG9uc2USQgoLYWNrUmVzcG9uc2UYJiABKAsyIC5wdWxzYXIucHJvdG8uQ29tbWFuZEFja1Jlc3BvbnNlUgthY2tSZXNwb25zZRJUChFnZXRPckNyZWF0ZVNjaGVtYRgnIAEoCzImLnB1bHNhci5wcm90by5Db21tYW5kR2V0T3JDcmVhdGVTY2hlbWFSEWdldE9yQ3JlYXRlU2NoZW1hEmwKGWdldE9yQ3JlYXRlU2NoZW1hUmVzcG9uc2UYKCABKAsyLi5wdWxzYXIucHJvdG8uQ29tbWFuZEdldE9yQ3JlYXRlU2NoZW1hUmVzcG9uc2VSGWdldE9yQ3JlYXRlU2NoZW1hUmVzcG9uc2USMwoGbmV3VHhuGDIgASgLMhsucHVsc2FyLnByb3RvLkNvbW1hbmROZXdUeG5SBm5ld1R4bhJLCg5uZXdUeG5SZXNwb25zZRgzIAEoCzIjLnB1bHNhci5wcm90by5Db21tYW5kTmV3VHhuUmVzcG9uc2VSDm5ld1R4blJlc3BvbnNlElQKEWFkZFBhcnRpdGlvblRvVHhuGDQgASgLMiYucHVsc2FyLnByb3RvLkNvbW1hbmRBZGRQYXJ0aXRpb25Ub1R4blIRYWRkUGFydGl0aW9uVG9UeG4SbAoZYWRkUGFydGl0aW9uVG9UeG5SZXNwb25zZRg1IAEoCzIuLnB1bHNhci5wcm90by5Db21tYW5kQWRkUGFydGl0aW9uVG9UeG5SZXNwb25zZVIZYWRkUGFydGl0aW9uVG9UeG5SZXNwb25zZRJdChRhZGRTdWJzY3JpcHRpb25Ub1R4bhg2IAEoCzIpLnB1bHNhci5wcm90by5Db21tYW5kQWRkU3Vic2NyaXB0aW9uVG9UeG5SFGFkZFN1YnNjcmlwdGlvblRvVHhuEnUKHGFkZFN1YnNjcmlwdGlvblRvVHhuUmVzcG9uc2UYNyABKAsyMS5wdWxzYXIucHJvdG8uQ29tbWFuZEFkZFN1YnNjcmlwdGlvblRvVHhuUmVzcG9uc2VSHGFkZFN1YnNjcmlwdGlvblRvVHhuUmVzcG9uc2USMwoGZW5kVHhuGDggASgLMhsucHVsc2FyLnByb3RvLkNvbW1hbmRFbmRUeG5SBmVuZFR4bhJLCg5lbmRUeG5SZXNwb25zZRg5IAEoCzIjLnB1bHNhci5wcm90by5Db21tYW5kRW5kVHhuUmVzcG9uc2VSDmVuZFR4blJlc3BvbnNlElQKEWVuZFR4bk9uUGFydGl0aW9uGDogASgLMiYucHVsc2FyLnByb3RvLkNvbW1hbmRFbmRUeG5PblBhcnRpdGlvblIRZW5kVHhuT25QYXJ0aXRpb24SbAoZZW5kVHhuT25QYXJ0aXRpb25SZXNwb25zZRg7IAEoCzIuLnB1bHNhci5wcm90by5Db21tYW5kRW5kVHhuT25QYXJ0aXRpb25SZXNwb25zZVIZZW5kVHhuT25QYXJ0aXRpb25SZXNwb25zZRJdChRlbmRUeG5PblN1YnNjcmlwdGlvbhg8IAEoCzIpLnB1bHNhci5wcm90by5Db21tYW5kRW5kVHhuT25TdWJzY3JpcHRpb25SFGVuZFR4bk9uU3Vic2NyaXB0aW9uEnUKHGVuZFR4bk9uU3Vic2NyaXB0aW9uUmVzcG9uc2UYPSABKAsyMS5wdWxzYXIucHJvdG8uQ29tbWFuZEVuZFR4bk9uU3Vic2NyaXB0aW9uUmVzcG9uc2VSHGVuZFR4bk9uU3Vic2NyaXB0aW9uUmVzcG9uc2Ui3wgKBFR5cGUSCwoHQ09OTkVDVBACEg0KCUNPTk5FQ1RFRBADEg0KCVNVQlNDUklCRRAEEgwKCFBST0RVQ0VSEAUSCAoEU0VORBAGEhAKDFNFTkRfUkVDRUlQVBAHEg4KClNFTkRfRVJST1IQCBILCgdNRVNTQUdFEAkSBwoDQUNLEAoSCAoERkxPVxALEg8KC1VOU1VCU0NSSUJFEAwSCwoHU1VDQ0VTUxANEgkKBUVSUk9SEA4SEgoOQ0xPU0VfUFJPRFVDRVIQDxISCg5DTE9TRV9DT05TVU1FUhAQEhQKEFBST0RVQ0VSX1NVQ0NFU1MQERIICgRQSU5HEBISCAoEUE9ORxATEiUKIVJFREVMSVZFUl9VTkFDS05PV0xFREdFRF9NRVNTQUdFUxAUEhgKFFBBUlRJVElPTkVEX01FVEFEQVRBEBUSIQodUEFSVElUSU9ORURfTUVUQURBVEFfUkVTUE9OU0UQFhIKCgZMT09LVVAQFxITCg9MT09LVVBfUkVTUE9OU0UQGBISCg5DT05TVU1FUl9TVEFUUxAZEhsKF0NPTlNVTUVSX1NUQVRTX1JFU1BPTlNFEBoSGAoUUkVBQ0hFRF9FTkRfT0ZfVE9QSUMQGxIICgRTRUVLEBwSFwoTR0VUX0xBU1RfTUVTU0FHRV9JRBAdEiAKHEdFVF9MQVNUX01FU1NBR0VfSURfUkVTUE9OU0UQHhIaChZBQ1RJVkVfQ09OU1VNRVJfQ0hBTkdFEB8SGwoXR0VUX1RPUElDU19PRl9OQU1FU1BBQ0UQIBIkCiBHRVRfVE9QSUNTX09GX05BTUVTUEFDRV9SRVNQT05TRRAhEg4KCkdFVF9TQ0hFTUEQIhIXChNHRVRfU0NIRU1BX1JFU1BPTlNFECMSEgoOQVVUSF9DSEFMTEVOR0UQJBIRCg1BVVRIX1JFU1BPTlNFECUSEAoMQUNLX1JFU1BPTlNFECYSGAoUR0VUX09SX0NSRUFURV9TQ0hFTUEQJxIhCh1HRVRfT1JfQ1JFQVRFX1NDSEVNQV9SRVNQT05TRRAoEgsKB05FV19UWE4QMhIUChBORVdfVFhOX1JFU1BPTlNFEDMSGAoUQUREX1BBUlRJVElPTl9UT19UWE4QNBIhCh1BRERfUEFSVElUSU9OX1RPX1RYTl9SRVNQT05TRRA1EhsKF0FERF9TVUJTQ1JJUFRJT05fVE9fVFhOEDYSJAogQUREX1NVQlNDUklQVElPTl9UT19UWE5fUkVTUE9OU0UQNxILCgdFTkRfVFhOEDgSFAoQRU5EX1RYTl9SRVNQT05TRRA5EhgKFEVORF9UWE5fT05fUEFSVElUSU9OEDoSIQodRU5EX1RYTl9PTl9QQVJUSVRJT05fUkVTUE9OU0UQOxIbChdFTkRfVFhOX09OX1NVQlNDUklQVElPThA8EiQKIEVORF9UWE5fT05fU1VCU0NSSVBUSU9OX1JFU1BPTlNFED0=');
