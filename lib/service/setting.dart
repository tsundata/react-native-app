import 'package:get/get.dart';

class SettingsService extends GetxService {
  Future<void> init() async {
    print('$runtimeType delays 1 sec');
    await 1.delay();
    print('$runtimeType ready!');
  }
}
