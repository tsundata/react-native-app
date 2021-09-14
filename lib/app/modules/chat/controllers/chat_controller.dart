import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:get/get.dart';

class ChatController extends GetxController {
  var messages = <types.Message>[].obs;
  final user = const types.User(id: '06c33e8b-e835-4736-80f4-63f44b66666c');

  @override
  void onInit() {
    super.onInit();
    _loadMessages();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void _loadMessages() async {
    final response = await rootBundle.loadString('assets/messages.json');
    final data = (jsonDecode(response) as List)
        .map((e) => types.Message.fromJson(e as Map<String, dynamic>))
        .toList();
    messages.value = data;
  }

  void addMessage(types.Message message) {
    messages.insert(0, message);
  }
}
