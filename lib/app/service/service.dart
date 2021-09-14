import 'package:get/get.dart';

import 'package:flow/app/service/database.dart';
import 'package:flow/app/service/setting.dart';

void initServices() async {
  print('starting services ...');

  /// Here is where you put get_storage, hive, shared_pref initialization.
  /// or moor connection, or whatever that's async.
  await Get.putAsync(() => DbService().init());
  await Get.putAsync(() => SettingsService().init());
  print('All services started...');
}
