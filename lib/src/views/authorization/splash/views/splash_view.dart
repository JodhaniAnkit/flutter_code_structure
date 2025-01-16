

import 'package:flutter/material.dart';
import 'package:flutter_structure/global/widgets/app_background.dart';
import 'package:get/get.dart';
import 'package:flutter_structure/global/constant/resources/import_resources.dart';
import 'package:flutter_structure/src/views/authorization/splash/controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  final SplashController splashController = Get.put(SplashController());

  SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: AppColors.kcPrimaryColor,
        body: SafeArea(child: AppBackground()));
  }
}
