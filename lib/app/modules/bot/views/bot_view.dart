import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bot_controller.dart';

class BotView extends GetView<BotController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BotView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BotView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
