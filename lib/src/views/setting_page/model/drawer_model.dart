

import 'package:flutter_structure/global/constant/resources/import_resources.dart';

class DrawerModel {
  final String? icon;
  final String title;
  String? path;
  final int selectedTile;

  DrawerModel(
      { this.icon,
      required this.title,
      this.path,
      required this.selectedTile});
}

List<DrawerModel> getTopDrawerList() {
  return [
    DrawerModel(
        title: R.strings.ksChangeLanguage,
        selectedTile: 0),
    // DrawerModel(
    //     icon: AppAssets.icGithub, title: R.strings.ksGitHub, selectedTile: 1),
    // DrawerModel(
    //     icon: AppAssets.icMore, title: R.strings.ksMore, selectedTile: 2)
  ];
}

List<DrawerModel> getBottomDrawerList() {
  return [
    DrawerModel(
        title: R.strings.ksDeleteAccount,
        selectedTile: 0),
    DrawerModel(
        title: R.strings.ksDeactivateAccount,
        selectedTile: 1),
    DrawerModel(
        title: R.strings.ksLogOut,
        selectedTile: 2)
  ];
}
