import 'package:get/get.dart';

class I18n extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'username': 'Username',
          'password': 'Password',
        },
        'zh_CN': {
          'username': '用户名',
          'password': '密码',
        }
      };
}
