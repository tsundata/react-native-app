import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/oauth_controller.dart';

class OauthView extends GetView<OauthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OauthView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OauthView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
