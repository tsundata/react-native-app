import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

import 'package:flow/app/routes/app_pages.dart';
import 'package:flow/app/widgets/input_field.dart';

import '../controllers/group_controller.dart';

class GroupView extends GetView<GroupController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GroupView'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          InputField(
            onChanged: (value) {},
            labelText: 'Name',
            errorText: '',
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.next,
            autoFocus: true,
          ),
          GFButton(
            onPressed: () {
              Get.toNamed(Routes.HOME);
            },
            text: "Create group",
            shape: GFButtonShape.square,
          ),
        ],
      ),
    );
  }
}
