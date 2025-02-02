

import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_structure/global/constant/resources/resources.dart';
import 'package:flutter_structure/global/utils/logger.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

//This file used for picked the images or file from your Device.
class FilePickerController extends GetxController {
  static FilePickerController get to => Get.put(FilePickerController());
  File? image;
  String? imagePath;
  final _picker = ImagePicker();

  @override
  void onInit() {
    super.onInit();
    image = null;
  }

  Future<void> requestCameraPermission({
    required ValueChanged<File?>? onCamera,
    required bool isCrop,
  }) async {
    var status = await Permission.camera.request();
    if (status == PermissionStatus.granted) {
      var pickedFile = await _picker.pickImage(source: ImageSource.camera);
      if (pickedFile != null) {
        image = File(pickedFile.path);
        if (image != null) {
          File file = File(image!.path);
          if (isCrop) {
            // CroppedFile filePath = await _cropImage(file.path);
            // onCamera!(File(filePath.path));
          } else {
            onCamera!(file);
          }
        }
      } else {
        Logger.logPrint('No image selected.');
      }
      Logger.logPrint('Permission Granted');
    } else if (status == PermissionStatus.denied) {
      Logger.logPrint('Permission denied');
    } else if (status == PermissionStatus.permanentlyDenied) {
      Logger.logPrint('Permission Permanently Denied');
      await openAppSettings();
    }
  }

  Future<void> requestGalleryPermission({
    ValueChanged<File?>? onGallery,
    required bool isCrop,
  }) async {
    var status = await Permission.storage.request();
    if (status == PermissionStatus.granted) {
      var picker = ImagePicker();
      var pickedFile = await picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        File imagePath = File(pickedFile.path);
        image = imagePath;
        Logger.logPrint('Image: $image');
        if (isCrop) {
          // CroppedFile filePath = await _cropImage(imagePath.path);
          // onGallery!(File(filePath.path));
        } else {
          onGallery!(image);
        }
      } else {
        Logger.logPrint('No image selected.');
      }
      Logger.logPrint('Permission Granted');
    } else if (status == PermissionStatus.denied) {
      Logger.logPrint('Permission denied');
    } else if (status == PermissionStatus.permanentlyDenied) {
      Logger.logPrint('Permission Permanently Denied');
      await openAppSettings();
    }
  }

  void openBottomSheet(
      {required ValueChanged<File?>? onCamera,
      ValueChanged<File?>? onGallery,
      List<String>? allowedExtension,
      ValueChanged<File?>? onFile,
      required bool isCrop,
      bool? showDocumentMenu,
      GestureTapCallback? onRemove}) {
    Get.bottomSheet(
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              buildCameraPicker(isCrop, onCamera),
              buildGalleryPicker(isCrop, onGallery),
              showDocumentMenu != null && showDocumentMenu
                  ? buildPdfPicker(allowedExtension, onFile)
                  : Container(),
              onRemove != null ? buildRemove(onRemove) : Container()
            ])),
        elevation: 20.0,
        enableDrag: true,
        backgroundColor:
            Get.isDarkMode ? Get.theme.colorScheme.background : Colors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        )));
  }

  ListTile buildRemove(GestureTapCallback onRemove) {
    return ListTile(
        title: Text(R.strings.ksRemove,
            style: TextStyle(color: Get.theme.colorScheme.shadow)),
        leading:
            Icon(Icons.delete_forever, color: Get.theme.colorScheme.shadow),
        onTap: onRemove);
  }

  ListTile buildPdfPicker(
      List<String>? allowedExtension, ValueChanged<File?>? onFile) {
    return ListTile(
        title:
            Text(R.strings.ksPdf, style: TextStyle(color: Get.theme.colorScheme.shadow)),
        leading:
            Icon(Icons.picture_as_pdf, color: Get.theme.colorScheme.shadow),
        onTap: () async {
          Get.back();
          image = null;
          FilePickerResult? result;
          result = await FilePicker.platform.pickFiles(
            type: FileType.custom,
            allowedExtensions: allowedExtension ?? ['pdf'],
          );
          if (result != null) {
            File file = File(result.files.single.path!);
            onFile!(file);
          }
        });
  }

  ListTile buildGalleryPicker(bool isCrop, ValueChanged<File?>? onGallery) {
    return ListTile(
        title: Text(R.strings.ksGallery,
            style: TextStyle(color: Get.theme.colorScheme.shadow)),
        leading: Icon(Icons.photo_library, color: Get.theme.colorScheme.shadow),
        onTap: () async {
          Get.back();
          image = null;
          requestGalleryPermission(isCrop: isCrop, onGallery: onGallery);
        });
  }

  ListTile buildCameraPicker(bool isCrop, ValueChanged<File?>? onCamera) {
    return ListTile(
        title: Text(R.strings.ksCamera,
            style: TextStyle(color: Get.theme.colorScheme.shadow)),
        leading:
            Icon(Icons.camera_alt_rounded, color: Get.theme.colorScheme.shadow),
        onTap: () async {
          Get.back();
          image = null;
          requestCameraPermission(isCrop: isCrop, onCamera: onCamera);
        });
  }
}
