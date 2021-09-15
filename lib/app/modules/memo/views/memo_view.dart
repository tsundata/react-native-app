import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/memo_controller.dart';

class MemoView extends GetView<MemoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MemoView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MemoView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
