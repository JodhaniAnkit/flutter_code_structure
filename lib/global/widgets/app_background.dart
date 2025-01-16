

import 'package:flutter/material.dart';

import 'package:flutter_structure/global/constant/resources/import_resources.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox.expand(
          child: Container(color: Colors.blueGrey.shade50,)),
      Center(
          child: Padding(
              padding: const EdgeInsets.all(ksBodyVerticalSpace30),
              child: Text('Flutter Demo', style: TextStyle(
                  color: AppColors.kcDefaultText, fontSize: 18, fontWeight: FontWeight.w600))))
    ]);
  }
}
