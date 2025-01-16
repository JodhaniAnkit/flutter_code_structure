
import 'package:flutter/material.dart';
import 'package:flutter_structure/global/preference/user_preference.dart';
import 'package:flutter_structure/global/utils/config.dart';
import 'package:flutter_structure/src/routes/app_pages.dart';
import 'package:get/get.dart';
import '../../../../authorization/select_language_screen/model/get_language_list_model.dart';

class ChangeLanguageController extends GetxController {
  var languageList = <LanguageData>[].obs;
  LanguageData? selectedLanguage;

  @override
  void onInit() {
    super.onInit();
    languageList.addAll(getLanguages());
    selectedLanguage = languageList.firstWhere(
        (element) => element.langCode == AppSession.getSelectedLanguageId());
  }

  selectedLanguageOnTap({required LanguageData item}) async {
    selectedLanguage = item;
    Config.setLocale.value = item.langCode.toString();
    AppSession.setSelectedLanguageId(Config.setLocale.value);
    Get.updateLocale(Locale(Config.setLocale.value));
    update();
  }

  Future<bool> onWillPopTap() async {
    return await Get.offAllNamed(Routes.dashboardScreen);
  }
}
