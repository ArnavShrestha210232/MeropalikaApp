import "dart:math";

import "package:flutter/material.dart";
import "package:meropalika/utils/colors.dart";

appBarText({Color? color}) {
  return TextStyle(
    color: color ?? kWhite,
    fontSize: 23,
  );
}

bigButton({Color? color}) {
  return TextStyle(
    color: color ?? kWhite,
    fontSize: 23,
  );
}

button({Color? color}) {
  return TextStyle(
    color: color ?? kWhite,
    fontSize: 17,
  );
}

class TextSize {
  static double textScaleFactor(BuildContext context,
      {double maxTextScaleFactor = 1.8}) {
    final width = MediaQuery.of(context).size.width;
    double val = (width / 1400) * maxTextScaleFactor;
    return max(1, min(val, maxTextScaleFactor));
  }
}
