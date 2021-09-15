import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/action_controller.dart';

class ActionView extends GetView<ActionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ActionView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ActionView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
