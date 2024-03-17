import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

class AppDecoration {
  // Blur decorations
  static BoxDecoration get blur => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.8),
      );

  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray80001,
      );
  static BoxDecoration get fillBlueGrayAf => BoxDecoration(
        color: appTheme.blueGray700Af,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA400,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange300,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillRedA => BoxDecoration(
        color: appTheme.redA200,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.5),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.25),
      );

  // Gradient decorations
  static BoxDecoration get gradientDeepOrangeToOrange => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, -0.16),
          end: Alignment(0.83, 1),
          colors: [
            appTheme.deepOrange400,
            appTheme.orange30001,
          ],
        ),
      );
  static BoxDecoration get gradientGreenAToTealA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, -0.16),
          end: Alignment(0.83, 1),
          colors: [
            appTheme.greenA400.withOpacity(0.15),
            appTheme.tealA70026,
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryToBlueGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, -4.92),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.onPrimary,
            appTheme.blueGray600.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientRedAToSecondaryContainer => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, -0.16),
          end: Alignment(0.83, 1),
          colors: [
            appTheme.redA20033,
            theme.colorScheme.secondaryContainer,
          ],
        ),
      );

  // Linear decorations
  static BoxDecoration get linear => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.whiteA700,
            appTheme.whiteA700.withOpacity(0),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.blueGray50,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray50 => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray50,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.gray100,
        border: Border.all(
          color: appTheme.gray100,
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineIndigoB => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.8),
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo100B2,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              17,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.whiteA700,
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
      );

  // White decorations
  static BoxDecoration get white => BoxDecoration(
        color: appTheme.whiteA700,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get circleBorder28 => BorderRadius.circular(
        28.h,
      );
  static BorderRadius get circleBorder35 => BorderRadius.circular(
        35.h,
      );
  static BorderRadius get circleBorder50 => BorderRadius.circular(
        50.h,
      );
  static BorderRadius get circleBorder55 => BorderRadius.circular(
        55.h,
      );
  static BorderRadius get circleBorder65 => BorderRadius.circular(
        65.h,
      );
  static BorderRadius get circleBorder71 => BorderRadius.circular(
        71.h,
      );
  static BorderRadius get circleBorder78 => BorderRadius.circular(
        78.h,
      );
  static BorderRadius get circleBorder96 => BorderRadius.circular(
        96.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL25 => BorderRadius.vertical(
        bottom: Radius.circular(25.h),
      );
  static BorderRadius get customBorderBL50 => BorderRadius.vertical(
        bottom: Radius.circular(50.h),
      );
  static BorderRadius get customBorderLR18 => BorderRadius.horizontal(
        right: Radius.circular(18.h),
      );
  static BorderRadius get customBorderLR25 => BorderRadius.only(
        topRight: Radius.circular(25.h),
      );
  static BorderRadius get customBorderTL16 => BorderRadius.only(
        topLeft: Radius.circular(16.h),
        bottomLeft: Radius.circular(16.h),
        bottomRight: Radius.circular(16.h),
      );
  static BorderRadius get customBorderTL18 => BorderRadius.horizontal(
        left: Radius.circular(18.h),
      );
  static BorderRadius get customBorderTL25 => BorderRadius.vertical(
        top: Radius.circular(25.h),
      );
  static BorderRadius get customBorderTL50 => BorderRadius.vertical(
        top: Radius.circular(50.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        2.h,
      );
  static BorderRadius get roundedBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    