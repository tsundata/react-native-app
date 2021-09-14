import 'package:flutter/material.dart';

import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';
import 'package:uuid/uuid.dart';

import 'package:flow/app/config/theme.dart';

import '../controllers/chat_controller.dart';

class ChatView extends GetView<ChatController> {
  void _handleMessageTap(types.Message message) async {
    if (message is types.FileMessage) {
      await OpenFile.open(message.uri);
    }
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: controller.user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );

    controller.addMessage(textMessage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Chat(
            showUserNames: true,
            showUserAvatars: true,
            theme: const DefaultChatTheme(
              primaryColor: AppTheme.nearlyBlue,
            ),
            messages: controller.messages.value,
            onSendPressed: _handleSendPressed,
            onMessageTap: _handleMessageTap,
            user: controller.user,
            l10n: const ChatL10nEn(
              inputPlaceholder: 'Send Message'
            ),
          )),
    );
  }
}
