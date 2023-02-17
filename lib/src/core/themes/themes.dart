import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';

import '../constants/app_sizes.dart';
import 'colors.dart';
import 'styles.dart';

/// Build a [CustomTheme] for [ThemeData] that's used to configure a [Theme].
class CustomTheme {
  static final ThemeData defaultTheme = ThemeData(
    useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: CustomColors.scaffoldBackground,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: CustomColors.inputBgGrey,
      enabledBorder: _inputBorder(),
      focusedBorder: _inputBorder(),
      border: _inputBorder(),
      disabledBorder: _inputBorder(),
      errorBorder: _inputBorder(
        borderWidth: 2.0,
        borderStyle: BorderStyle.solid,
        borderColor: CustomColors.red,
      ),
    ),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: CustomColors.primary,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
      titleTextStyle: TextStyle(
        color: CustomColors.white,
        fontWeight: FontWeight.bold,
        fontSize: Sizes.p16,
      ),
      iconTheme: IconThemeData(
        color: CustomColors.white,
      ),
      centerTitle: true,
      backgroundColor: CustomColors.primary,
      elevation: 0,
    ),
    primarySwatch: CustomColors.primaryMaterialColor,
  );

  static InputBorder _inputBorder({
    double? radius,
    double borderWidth = 0.0,
    BorderStyle borderStyle = BorderStyle.none,
    Color borderColor = Colors.transparent,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        radius ?? CustomStyles.radius,
      ),
      borderSide: BorderSide(
        width: borderWidth,
        style: borderStyle,
        color: borderColor,
      ),
    );
  }
}
