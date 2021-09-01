///
//  Generated code. Do not modify.
//  source: message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Message extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Message', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.O3)
    ..pc<MessageItem>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messages', $pb.PbFieldType.PM, subBuilder: MessageItem.create)
    ..hasRequiredFields = false
  ;

  Message._() : super();
  factory Message({
    $core.int? type,
    $core.Iterable<MessageItem>? messages,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (messages != null) {
      _result.messages.addAll(messages);
    }
    return _result;
  }
  factory Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Message clone() => Message()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Message copyWith(void Function(Message) updates) => super.copyWith((message) => updates(message as Message)) as Message; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Message create() => Message._();
  Message createEmptyInstance() => create();
  static $pb.PbList<Message> createRepeated() => $pb.PbList<Message>();
  @$core.pragma('dart2js:noInline')
  static Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Message>(create);
  static Message? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<MessageItem> get messages => $_getList(1);
}

class MessageItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'senderType', $pb.PbFieldType.O3)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'senderId')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'senderDeviceId')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receiverType', $pb.PbFieldType.O3)
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receiverId')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.O3)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..aInt64(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'syncSequence')
    ..aInt64(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sendTime')
    ..hasRequiredFields = false
  ;

  MessageItem._() : super();
  factory MessageItem({
    $fixnum.Int64? messageId,
    $core.int? senderType,
    $fixnum.Int64? senderId,
    $fixnum.Int64? senderDeviceId,
    $core.int? receiverType,
    $fixnum.Int64? receiverId,
    $core.int? type,
    $core.String? content,
    $fixnum.Int64? syncSequence,
    $fixnum.Int64? sendTime,
  }) {
    final _result = create();
    if (messageId != null) {
      _result.messageId = messageId;
    }
    if (senderType != null) {
      _result.senderType = senderType;
    }
    if (senderId != null) {
      _result.senderId = senderId;
    }
    if (senderDeviceId != null) {
      _result.senderDeviceId = senderDeviceId;
    }
    if (receiverType != null) {
      _result.receiverType = receiverType;
    }
    if (receiverId != null) {
      _result.receiverId = receiverId;
    }
    if (type != null) {
      _result.type = type;
    }
    if (content != null) {
      _result.content = content;
    }
    if (syncSequence != null) {
      _result.syncSequence = syncSequence;
    }
    if (sendTime != null) {
      _result.sendTime = sendTime;
    }
    return _result;
  }
  factory MessageItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageItem clone() => MessageItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageItem copyWith(void Function(MessageItem) updates) => super.copyWith((message) => updates(message as MessageItem)) as MessageItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageItem create() => MessageItem._();
  MessageItem createEmptyInstance() => create();
  static $pb.PbList<MessageItem> createRepeated() => $pb.PbList<MessageItem>();
  @$core.pragma('dart2js:noInline')
  static MessageItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageItem>(create);
  static MessageItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get messageId => $_getI64(0);
  @$pb.TagNumber(1)
  set messageId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get senderType => $_getIZ(1);
  @$pb.TagNumber(2)
  set senderType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSenderType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSenderType() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get senderId => $_getI64(2);
  @$pb.TagNumber(3)
  set senderId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSenderId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSenderId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get senderDeviceId => $_getI64(3);
  @$pb.TagNumber(4)
  set senderDeviceId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSenderDeviceId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSenderDeviceId() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get receiverType => $_getIZ(4);
  @$pb.TagNumber(5)
  set receiverType($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasReceiverType() => $_has(4);
  @$pb.TagNumber(5)
  void clearReceiverType() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get receiverId => $_getI64(5);
  @$pb.TagNumber(6)
  set receiverId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasReceiverId() => $_has(5);
  @$pb.TagNumber(6)
  void clearReceiverId() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get type => $_getIZ(6);
  @$pb.TagNumber(7)
  set type($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasType() => $_has(6);
  @$pb.TagNumber(7)
  void clearType() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get content => $_getSZ(7);
  @$pb.TagNumber(8)
  set content($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasContent() => $_has(7);
  @$pb.TagNumber(8)
  void clearContent() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get syncSequence => $_getI64(8);
  @$pb.TagNumber(9)
  set syncSequence($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSyncSequence() => $_has(8);
  @$pb.TagNumber(9)
  void clearSyncSequence() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get sendTime => $_getI64(9);
  @$pb.TagNumber(10)
  set sendTime($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSendTime() => $_has(9);
  @$pb.TagNumber(10)
  void clearSendTime() => clearField(10);
}

