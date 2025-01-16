

import 'package:flutter_structure/src/routes/app_pages.dart';
import 'package:get/get.dart';

import 'package:flutter_structure/global/preference/user_preference.dart';

class SplashController extends GetxController {
  static SplashController get to => Get.find();

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 3), () {
      if (AppSession.isAuthenticationDone()) {
        Get.offAllNamed(Routes.dashboardScreen);
      } else {
        Get.offAllNamed(Routes.selectLanguage);
      }
    });
  }
}
