

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_structure/global/constant/resources/import_resources.dart';
import 'package:flutter_structure/src/views/dashboard/component/bottom_navigation/bottom_navigation_item_icon.dart';
import 'package:flutter_structure/src/views/dashboard/controller/dashboard_controller.dart';
import 'package:flutter_structure/src/views/dashboard/model/bottom_navigation_item_model.dart';

class DashboardScreen extends GetView<DashboardController> {
  final DashboardController dashboardController =
      Get.put(DashboardController());

  DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => controller.onBackCalled(context),
        child: Scaffold(
            bottomNavigationBar: buildBottomNavigationMenu(),
            body: Obx(() =>
                controller.widgetOptions[controller.currentTabIndex.value])));
  }

  buildBottomNavigationMenu() {
    return Obx(() {
      return BottomNavigationBar(
          showUnselectedLabels: true,
          showSelectedLabels: true,
          onTap: controller.changeTabIndex,
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.currentTabIndex.value,
          backgroundColor: AppColors.kcPrimaryColor,
          items: controller.bottomNavigationList
              .map((e) =>
                  buildBottomNavigationBarItem(bottomNavigationItemModel: e))
              .toList());
    });
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
      {BottomNavigationItemModel? bottomNavigationItemModel}) {
    return BottomNavigationBarItem(
        icon: BottomNavigationItemIcon(
            bottomNavigationItemModel: bottomNavigationItemModel!,
            isActive: false),
        activeIcon: BottomNavigationItemIcon(
            bottomNavigationItemModel: bottomNavigationItemModel,
            isActive: true),
        label: '',
        backgroundColor: AppColors.kcPrimaryColor);
  }
}
