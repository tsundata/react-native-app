import 'package:get/get.dart';

import '../controllers/oauth_controller.dart';

class OauthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OauthController>(
      () => OauthController(),
    );
  }
}
