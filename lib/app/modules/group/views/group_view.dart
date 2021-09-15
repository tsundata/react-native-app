import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/group_controller.dart';

class GroupView extends GetView<GroupController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GroupView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'GroupView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
