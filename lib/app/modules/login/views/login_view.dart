import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

import 'package:flow/app/routes/app_pages.dart';
import 'package:flow/app/widgets/input_field.dart';
import 'package:flow/generated/locales.g.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            SizedBox(height: screenHeight * .12),
            Text(
              "Login",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenHeight * .05),
            InputField(
              onChanged: (value) {
                controller.username.value = value;
              },
              labelText: LocaleKeys.user_username.tr,
              errorText: controller.usernameError.value,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              autoFocus: true,
            ),
            SizedBox(height: screenHeight * .05),
            InputField(
              onChanged: (value) {
                controller.password.value = value;
              },
              labelText: LocaleKeys.user_password.tr,
              errorText: controller.passwordError.value,
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.next,
              autoFocus: true,
            ),
            SizedBox(height: screenHeight * .05),
            GFButton(
              onPressed: () {
                Get.toNamed(Routes.HOME);
              },
              text: "Login",
              shape: GFButtonShape.square,
            ),
          ],
        ),
      ),
    );
  }
}
