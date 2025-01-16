
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_structure/global/constant/resources/assets.dart';
import 'package:flutter_structure/global/constant/resources/colors.dart';
import 'package:flutter_structure/global/constant/resources/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

//This is common app bar for different pages of same style and pattern
class CommonWhiteAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Color? backgroundColor;
  final String title;
  final AppBar appBar;
  final VoidCallback? onTap;
  final List<Widget>? actionWidgets;
  final TabBar? tabBar;
  final double? height;
  final TextStyle? style;
  final Color? statusBarColor;
  final bool? isLeading, isWhiteBack;
  final double? elevation;

  /// you can add more fields that meet your needs

  const CommonWhiteAppbar(
      {super.key,
      required this.title,
      required this.appBar,
      this.actionWidgets,
      this.elevation,
      this.statusBarColor,
      this.backgroundColor,
      this.onTap,
      this.tabBar,
      this.style,
      this.height,
      this.isLeading,
      this.isWhiteBack});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        systemOverlayStyle: buildSystemUiOverlayStyle(),
        elevation: elevation ?? 0,
        leadingWidth: Get.width * 0.09,
        automaticallyImplyLeading: false,
        title: Text(title,
            style: style ??
                AppStyles.txt18sizeW600White.merge(const TextStyle(
                    color: AppColors.kcPrimaryColor,
                    fontWeight: FontWeight.w700)),
            textAlign: TextAlign.center),
        backgroundColor: backgroundColor ?? AppColors.kcWhite,
        actions: actionWidgets,
        bottom: tabBar,
        leading: isLeading == true
            ? null
            : GestureDetector(
                onTap: onTap ??
                    () {
                      Get.back();
                    },
                child: Padding(
                    padding: EdgeInsets.only(left: Get.width * 0.05),
                    child: SvgPicture.asset('AppAssets',
                        color: isWhiteBack == true
                            ? AppColors.kcWhite
                            : AppColors.kcBlack))),
        centerTitle: true);
  }

  SystemUiOverlayStyle buildSystemUiOverlayStyle() {
    return SystemUiOverlayStyle(
        statusBarColor: statusBarColor ?? AppColors.kcWhite,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light);
  }

  @override
  Size get preferredSize => Size.fromHeight(height == null
      ? appBar.preferredSize.height
      : appBar.preferredSize.height * 2);
}
