

import 'package:get/get.dart';

import 'package:flutter_structure/src/views/authorization/login_screen/controller/login_screen_controller.dart';

class LoginScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LoginScreenController>(() => LoginScreenController());
  }

}