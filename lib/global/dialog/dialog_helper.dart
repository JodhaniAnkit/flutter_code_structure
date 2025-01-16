

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_structure/global/dialog/common_dialog.dart';

class DialogueHelper {
  static showCommonDialogue(
      {required GestureTapCallback onPositiveClick,
      required VoidCallback onNegativeClick,
      required String positiveBtnText,
      description,
      String? title,
      required String cancelBtnText}) {
    Get.dialog(CommonDialog(
        description: description ?? '',
        negativeBtnText: cancelBtnText,
        onNegativeTap: onNegativeClick,
        onPositiveTap: onPositiveClick,
        positiveBtnText: positiveBtnText,
        title: title));
  }
}
