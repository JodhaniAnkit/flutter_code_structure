
import 'package:flutter/material.dart';


class DotIndicatorItem extends StatelessWidget {
  final Color innerDotColor, outerDotColor;

  const DotIndicatorItem(
      {Key? key, required this.innerDotColor, required this.outerDotColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(2),
        padding: const EdgeInsets.all(6),
        width: 25,
        decoration: BoxDecoration(
            border: Border.all(color: outerDotColor), shape: BoxShape.circle),
        child: Container(
            decoration:
                BoxDecoration(color: innerDotColor, shape: BoxShape.circle)));
  }
}
