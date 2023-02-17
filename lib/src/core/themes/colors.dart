import 'package:flutter/material.dart';

class CustomColors {
  /// It is used as a primary color
  static const Color primary = Color(0xFF151f35);

  /// It is used as primaryButton color
  static const Color primaryButton = Color(0xFFD29828);

  /// It is used as lightText color
  static const Color lightText = Color(0xFF9CA2AA);

  /// It is used as background in text form fields with grey fill color
  static const Color inputBgGrey = Color(0xFFF2F2F2);

  /// It is used as background in text form fields with grey fill color when they are disabled
  static const Color inputBgGreyDisabled = Color(0XFF9CA2AA);

  /// It is used as scaffoldBackground contrast color
  static const Color scaffoldBackground = Color(0xFFF9F9F9);

  /// It is used as red color
  static const MaterialColor red = Colors.red;

  /// It is used as white color
  static const Color white = Colors.white;

  /// It is used as dark color
  static const Color dark = Colors.black;

  /// It is used as grey color
  static const MaterialColor grey = Colors.grey;

  /// It is used as green color
  static const MaterialColor green = Colors.green;

  /// It is used to set the primarySwatch MaterialColor in `themes.dart` file
  static MaterialColor primaryMaterialColor =
      MaterialColor(primary.value, _primaryMaterialColor);

  static const Map<int, Color> _primaryMaterialColor = {
    50: Color.fromRGBO(30, 35, 41, .1),
    100: Color.fromRGBO(30, 35, 41, .2),
    200: Color.fromRGBO(30, 35, 41, .3),
    300: Color.fromRGBO(30, 35, 41, .4),
    400: Color.fromRGBO(30, 35, 41, .5),
    500: Color.fromRGBO(30, 35, 41, .6),
    600: Color.fromRGBO(30, 35, 41, .7),
    700: Color.fromRGBO(30, 35, 41, .8),
    800: Color.fromRGBO(30, 35, 41, .9),
    900: Color.fromRGBO(30, 35, 41, 1),
  };
}
