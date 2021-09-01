///
//  Generated code. Do not modify.
//  source: message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use messageDescriptor instead')
const Message$json = const {
  '1': 'Message',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 5, '10': 'type'},
    const {'1': 'messages', '3': 2, '4': 3, '5': 11, '6': '.pb.MessageItem', '10': 'messages'},
  ],
};

/// Descriptor for `Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDescriptor = $convert.base64Decode('CgdNZXNzYWdlEhIKBHR5cGUYASABKAVSBHR5cGUSKwoIbWVzc2FnZXMYAiADKAsyDy5wYi5NZXNzYWdlSXRlbVIIbWVzc2FnZXM=');
@$core.Deprecated('Use messageItemDescriptor instead')
const MessageItem$json = const {
  '1': 'MessageItem',
  '2': const [
    const {'1': 'message_id', '3': 1, '4': 1, '5': 3, '10': 'messageId'},
    const {'1': 'sender_type', '3': 2, '4': 1, '5': 5, '10': 'senderType'},
    const {'1': 'sender_id', '3': 3, '4': 1, '5': 3, '10': 'senderId'},
    const {'1': 'sender_device_id', '3': 4, '4': 1, '5': 3, '10': 'senderDeviceId'},
    const {'1': 'receiver_type', '3': 5, '4': 1, '5': 5, '10': 'receiverType'},
    const {'1': 'receiver_id', '3': 6, '4': 1, '5': 3, '10': 'receiverId'},
    const {'1': 'type', '3': 7, '4': 1, '5': 5, '10': 'type'},
    const {'1': 'content', '3': 8, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'sync_sequence', '3': 9, '4': 1, '5': 3, '10': 'syncSequence'},
    const {'1': 'send_time', '3': 10, '4': 1, '5': 3, '10': 'sendTime'},
  ],
};

/// Descriptor for `MessageItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageItemDescriptor = $convert.base64Decode('CgtNZXNzYWdlSXRlbRIdCgptZXNzYWdlX2lkGAEgASgDUgltZXNzYWdlSWQSHwoLc2VuZGVyX3R5cGUYAiABKAVSCnNlbmRlclR5cGUSGwoJc2VuZGVyX2lkGAMgASgDUghzZW5kZXJJZBIoChBzZW5kZXJfZGV2aWNlX2lkGAQgASgDUg5zZW5kZXJEZXZpY2VJZBIjCg1yZWNlaXZlcl90eXBlGAUgASgFUgxyZWNlaXZlclR5cGUSHwoLcmVjZWl2ZXJfaWQYBiABKANSCnJlY2VpdmVySWQSEgoEdHlwZRgHIAEoBVIEdHlwZRIYCgdjb250ZW50GAggASgJUgdjb250ZW50EiMKDXN5bmNfc2VxdWVuY2UYCSABKANSDHN5bmNTZXF1ZW5jZRIbCglzZW5kX3RpbWUYCiABKANSCHNlbmRUaW1l');
