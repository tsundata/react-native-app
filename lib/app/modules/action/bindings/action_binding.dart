import 'package:get/get.dart';

import '../controllers/action_controller.dart';

class ActionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ActionController>(
      () => ActionController(),
    );
  }
}
