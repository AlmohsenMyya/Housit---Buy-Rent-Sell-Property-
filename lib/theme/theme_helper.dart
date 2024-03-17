import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/utils/pref_utils.dart';
import 'package:almohsen_s_application12/core/utils/size_utils.dart';
import 'package:get/get.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    PrefUtils().setThemeData(_newTheme);
    Get.forceAppUpdate();
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA700,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 3,
        space: 3,
        color: appTheme.blueGray600,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyMedium: TextStyle(
          color: appTheme.blueGray600,
          fontSize: 14.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.blueGray600,
          fontSize: 12.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 30.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: appTheme.blueGray80001,
          fontSize: 24.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w600,
        ),
        labelLarge: TextStyle(
          color: appTheme.blueGray80001,
          fontSize: 12.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
        ),
        labelMedium: TextStyle(
          color: appTheme.blueGray80001,
          fontSize: 10.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: appTheme.blueGray600,
          fontSize: 8.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: appTheme.blueGray80001,
          fontSize: 18.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.blueGray80001,
          fontSize: 14.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF4466E2),
    secondaryContainer: Color(0X33F24871),

    // On colors(text colors)
    onPrimary: Color(0XE5141A48),
    onPrimaryContainer: Color(0XFFA1A4C1),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber500 => Color(0XFFFFC107);

  // Blue
  Color get blue600 => Color(0XFF1278F3);

  // BlueGrayAa
  Color get blueGray300Aa => Color(0XAA9297BD);

  // BlueGray
  Color get blueGray50 => Color(0XFFECEDF3);
  Color get blueGray600 => Color(0XFF53577A);
  Color get blueGray800 => Color(0XFF393E67);
  Color get blueGray80001 => Color(0XFF242B5C);

  // BlueGrayAf
  Color get blueGray700Af => Color(0XAF3F467C);

  // DeepOrange
  Color get deepOrange400 => Color(0XFFFD7F49);
  Color get deepOrangeA200 => Color(0XFFFA712D);

  // DeepPurple
  Color get deepPurpleA20033 => Color(0X336349FD);
  Color get deepPurpleA2003301 => Color(0X339A49F2);

  // Gray
  Color get gray100 => Color(0XFFF5F4F7);

  // Green
  Color get greenA400 => Color(0XFF11CF74);

  // IndigoB
  Color get indigo100B2 => Color(0XB2C6BEDE);

  // Indigo
  Color get indigo900 => Color(0XFF003087);
  Color get indigo90001 => Color(0XFF1A1F71);

  // Orange
  Color get orange300 => Color(0XFFFDB549);
  Color get orange30001 => Color(0XFFF2B848);

  // Red
  Color get redA200 => Color(0XFFFD5F49);
  Color get redA20033 => Color(0X33FD5449);

  // Teal
  Color get tealA70026 => Color(0X2608C6AF);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);

  // Yellow
  Color get yellow700 => Color(0XFFFFC42C);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
