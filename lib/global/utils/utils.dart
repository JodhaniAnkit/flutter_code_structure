

import 'dart:developer' as logging;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class Utils {
  static errorSnackBar({String title = 'Error', required String message}) {
    Get.log('[$title] $message', isError: true);
    if (message != '' && message != '{}') {
      return Get.showSnackbar(GetSnackBar(
          messageText: Text(message,
              style: Get.textTheme.bodySmall!
                  .merge(const TextStyle(color: Colors.white))),
          margin:
              EdgeInsets.only(bottom: Get.height * 0.15, right: 20, left: 20),
          backgroundColor: Colors.red,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          borderRadius: 8,
          duration: const Duration(seconds: 3)));
    }
  }

  /// When we want to show success message to the user this method can be user and we also have message param
  /// so we can make it dynamic message
  static successSnackBar({String title = 'Success', required String message}) {
    Get.log('[$title] $message');
    if (message != '' && message != '{}') {
      return Get.showSnackbar(GetSnackBar(
          messageText: Text(message,
              style: Get.textTheme.bodySmall!
                  .merge(const TextStyle(color: Colors.white))),
          margin:
              EdgeInsets.only(bottom: Get.height * 0.15, right: 20, left: 20),
          backgroundColor: Colors.green,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          borderRadius: 8,
          dismissDirection: DismissDirection.horizontal,
          duration: const Duration(seconds: 3)));
    }
  }
}
