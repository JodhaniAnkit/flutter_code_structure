
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_structure/global/constant/resources/import_resources.dart';


class CommonDropDownWidget extends StatelessWidget {
  final dynamic value;
  final Color? dropdownBackgroundColor, dropdownIconColor;
  final ValueChanged<dynamic>? onChanged;
  final List<DropdownMenuItem<dynamic>>? items;

  final String? hintText;

  const CommonDropDownWidget(
      {Key? key,
      this.value,
      this.onChanged,
      this.items,
      this.hintText,
      this.dropdownBackgroundColor,
      this.dropdownIconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
            const EdgeInsets.symmetric(horizontal: ksWidgetHorizontalSpace15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(Get.height * 0.01)),
            color: dropdownBackgroundColor ?? AppColors.kcInputFilled.withOpacity(0.3)),
        child: DropdownButtonHideUnderline(
            child: DropdownButton(
                value: value,
                icon: Icon(Icons.keyboard_arrow_down,
                    color: dropdownIconColor ?? Colors.grey, size: 30),
                isExpanded: true,
                style: AppStyles.txt10sizeWithW700,
                onChanged: onChanged,
                hint: Text(hintText ?? '',
                    style: AppStyles.txt16sizeW600CaptionLightGray),
                items: items)));
  }
}
