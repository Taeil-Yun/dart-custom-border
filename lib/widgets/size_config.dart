import 'package:flutter/widgets.dart';

class SizeConfig {
  static double screenWidth;
  static double screenHeight;
  static double safeScreenHeight;

  static double blockSizeHorizontal;
  static double blockSizeVertical;
  static double safeBlockVertical;

  void init(BuildContext context) {
    // MediaQuery Object
    var _mediaQueryData = MediaQuery.of(context);

    // Screen Sizes
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    var _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeScreenHeight = screenHeight - _safeAreaVertical;

    // Screen Blocks / 100
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
  }
}
