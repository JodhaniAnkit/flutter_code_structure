

import 'package:get/get.dart';

import 'package:flutter_structure/src/views/authorization/welcome_screen/controller/welcome_screen_controller.dart';

class WelcomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomeScreenController>(() => WelcomeScreenController());
  }
}
