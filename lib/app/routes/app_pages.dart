import 'package:get/get.dart';

import 'package:flow/app/modules/action/bindings/action_binding.dart';
import 'package:flow/app/modules/action/views/action_view.dart';
import 'package:flow/app/modules/bot/bindings/bot_binding.dart';
import 'package:flow/app/modules/bot/views/bot_view.dart';
import 'package:flow/app/modules/chat/bindings/chat_binding.dart';
import 'package:flow/app/modules/chat/views/chat_view.dart';
import 'package:flow/app/modules/credential/bindings/credential_binding.dart';
import 'package:flow/app/modules/credential/views/credential_view.dart';
import 'package:flow/app/modules/group/bindings/group_binding.dart';
import 'package:flow/app/modules/group/views/group_view.dart';
import 'package:flow/app/modules/home/bindings/home_binding.dart';
import 'package:flow/app/modules/home/views/home_view.dart';
import 'package:flow/app/modules/login/bindings/login_binding.dart';
import 'package:flow/app/modules/login/views/login_view.dart';
import 'package:flow/app/modules/memo/bindings/memo_binding.dart';
import 'package:flow/app/modules/memo/views/memo_view.dart';
import 'package:flow/app/modules/oauth/bindings/oauth_binding.dart';
import 'package:flow/app/modules/oauth/views/oauth_view.dart';
import 'package:flow/app/modules/profile/bindings/profile_binding.dart';
import 'package:flow/app/modules/profile/views/profile_view.dart';
import 'package:flow/app/modules/role/bindings/role_binding.dart';
import 'package:flow/app/modules/role/views/role_view.dart';
import 'package:flow/app/modules/setting/bindings/setting_binding.dart';
import 'package:flow/app/modules/setting/views/setting_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => SettingView(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.GROUP,
      page: () => GroupView(),
      binding: GroupBinding(),
    ),
    GetPage(
      name: _Paths.BOT,
      page: () => BotView(),
      binding: BotBinding(),
    ),
    GetPage(
      name: _Paths.MEMO,
      page: () => MemoView(),
      binding: MemoBinding(),
    ),
    GetPage(
      name: _Paths.OAUTH,
      page: () => OauthView(),
      binding: OauthBinding(),
    ),
    GetPage(
      name: _Paths.CREDENTIAL,
      page: () => CredentialView(),
      binding: CredentialBinding(),
    ),
    GetPage(
      name: _Paths.ACTION,
      page: () => ActionView(),
      binding: ActionBinding(),
    ),
    GetPage(
      name: _Paths.ROLE,
      page: () => RoleView(),
      binding: RoleBinding(),
    ),
  ];
}
