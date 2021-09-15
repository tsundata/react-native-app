import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/role_controller.dart';

class RoleView extends GetView<RoleController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RoleView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RoleView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
