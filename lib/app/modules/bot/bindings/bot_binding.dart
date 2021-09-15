import 'package:get/get.dart';

import '../controllers/bot_controller.dart';

class BotBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BotController>(
      () => BotController(),
    );
  }
}
