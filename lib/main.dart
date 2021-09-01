import 'package:flow/i18n/translation.dart';
import 'package:flow/screen/chat.dart';
import 'package:flow/screen/home.dart';
import 'package:flow/screen/list.dart';
import 'package:flow/screen/login.dart';
import 'package:flow/screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flow',
      translations: I18n(),
      locale: Get.deviceLocale,
      fallbackLocale: Locale('en', 'US'),
      initialRoute: '/',
      routes: {
        '/home': (context) => HomePage(),
        '/profile': (context) => ProfilePage(),
        '/list': (context) => ListPage(),
        '/chat': (context) => ChatPage(),
        '/': (context) => LoginPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
