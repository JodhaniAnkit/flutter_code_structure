import 'package:flutter/material.dart';

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_structure/global/utils/logger.dart';
import 'package:flutter_structure/global/utils/network.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_structure/flutter_boilerplate.dart';
import 'package:flutter_structure/global/preference/user_preference.dart';

Future<void> main() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await GetStorage.init();
    AppSession.init();
    Network.getInstance();
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    runApp(const FlutterBoilerPlateApp());
  }, (error, stackTrace) {
    Logger.logPrint("Main======>>>>${error.toString()}");
  });
}
