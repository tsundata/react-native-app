import 'package:flow/service/database.dart';
import 'package:flow/service/setting.dart';
import 'package:get/get.dart';

void initServices() async {
  print('starting services ...');

  /// Here is where you put get_storage, hive, shared_pref initialization.
  /// or moor connection, or whatever that's async.
  await Get.putAsync(() => DbService().init());
  await Get.putAsync(() => SettingsService().init());
  print('All services started...');
}
