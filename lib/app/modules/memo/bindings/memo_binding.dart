import 'package:get/get.dart';

import '../controllers/memo_controller.dart';

class MemoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MemoController>(
      () => MemoController(),
    );
  }
}
