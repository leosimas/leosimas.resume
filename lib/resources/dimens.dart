import 'package:flutter/cupertino.dart';

class Dimens {

  static const XSMALL = 4.0;
  static const SMALL = 8.0;
  static const MEDIUM = 16.0;
  static const XMEDIUM = 24.0;
  static const LARGE = 32.0;
  static const XLARGE = 48.0;

  static const FONT_SMALL = 12.0;
  static const FONT_MEDIUM = 16.0;
  static const FONT_LARGE = 24.0;
  static const FONT_XLARGE = 28.0;

  static const BUTTON_HEIGHT = XLARGE;

  static SizedBox margin({size : MEDIUM}) {
    return SizedBox(height: size, width: size,);
  }

}