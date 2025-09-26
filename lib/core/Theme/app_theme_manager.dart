import 'package:flutter/material.dart';
import 'package:islame/core/Theme/color_palette.dart';

abstract class AppThemeManager {
  static ThemeData appThemeData() => ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorPalette.primaryColor,
      selectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(
        fontFamily: "Janna",
        fontWeight: FontWeight.w700,
        fontSize: 12,
      ),
      unselectedItemColor: ColorPalette.unselectedItemColor,
      showUnselectedLabels: false,
    ),
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontFamily: "Janna",
        fontWeight: FontWeight.w700,
        color: ColorPalette.generalTextColor,
      ),
      titleLarge: TextStyle(
        fontFamily: "Janna",
        fontWeight: FontWeight.w700,
        color: ColorPalette.generalTextColor,
      ),
      bodyLarge: TextStyle(
        fontFamily: "Janna",
        fontWeight: FontWeight.w700,
        color: ColorPalette.secondTitleTextColor,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Janna",
        fontWeight: FontWeight.w700,
        color: ColorPalette.generalTextColor,
      ),
    ),
  );
}
