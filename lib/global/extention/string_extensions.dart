

import 'package:flutter_structure/global/app_localization/app_localization.dart';
extension TranslateString on String {
  String toTranslate() {
    return AppLocalizations().getText(this);
  }
}
