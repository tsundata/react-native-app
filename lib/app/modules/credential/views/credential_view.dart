import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/credential_controller.dart';

class CredentialView extends GetView<CredentialController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CredentialView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CredentialView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
