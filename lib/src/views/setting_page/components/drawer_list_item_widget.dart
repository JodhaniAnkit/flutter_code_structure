

import 'package:flutter/material.dart';
import 'package:flutter_structure/src/views/setting_page/model/drawer_model.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../global/constant/resources/import_resources.dart';
import '../../../../global/preference/user_preference.dart';

class DrawerListItemWidget extends StatelessWidget {
  final DrawerModel drawerModel;
  final GestureTapCallback? onTap;
  final bool displayLang;
  final bool? isDecorated;

  const DrawerListItemWidget(
      {Key? key,
      this.onTap,
      required this.drawerModel,
      this.isDecorated,
      required this.displayLang})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("Text======>${drawerModel.title}");
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: isDecorated != null && isDecorated == true
          ? BoxDecoration(
              color: const Color.fromRGBO(162, 168, 181, 0.35),
              borderRadius: BorderRadius.circular(8))
          : null,
      child: InkWell(
          onTap: onTap,
          child: Row(children: [
            Expanded(
                child: Row(children: [
              SizedBox(
                  width: Get.width * 0.06,
                  child: SvgPicture.asset(drawerModel.icon??'')),
              SizedBox(width: Get.width * 0.04),
              Flexible(
                  child: Text(drawerModel.title,
                      style: AppStyles.txt16sizeW600CaptionLightGray,
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis))
            ])),
            Visibility(
              visible: displayLang,
              child: Row(children: [
                Text(
                    AppSession.getSelectedLanguageId().toUpperCase().toString(),
                    style: AppStyles.txt16sizeW600CaptionLightGray
                        .copyWith(color: AppColors.kcWhite)),
                const Icon(Icons.keyboard_arrow_right, color: AppColors.kcWhite)
              ]),
            )
          ])),
    );
  }
}
