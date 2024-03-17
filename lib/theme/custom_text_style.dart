import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/utils/size_utils.dart';
import 'package:almohsen_s_application12/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumBluegray80001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumff242b5c => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF242B5C),
      );
  static get bodyMediumff53577a => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF53577A),
      );
  static get bodySmall9 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 9.fSize,
      );
  static get bodySmallBluegray800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray800,
      );
  static get bodySmallBluegray80001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get bodySmallBluegray80001_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get bodySmallMontserrat =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        fontSize: 9.fSize,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallff242b5c => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF242B5C),
      );
  static get bodySmallff53577a => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF53577A),
      );
  // Headline text style
  static get headlineSmallBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallMontserrat =>
      theme.textTheme.headlineSmall!.montserrat.copyWith(
        fontSize: 25.fSize,
        fontWeight: FontWeight.w800,
      );
  static get headlineSmallMontserratWhiteA700 =>
      theme.textTheme.headlineSmall!.montserrat.copyWith(
        color: appTheme.whiteA700,
        fontSize: 25.fSize,
      );
  // Label text style
  static get labelLargeBluegray600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray600,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBluegray600Medium =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray600,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeBluegray600_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray600,
      );
  static get labelLargeGray100 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray100,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray100Medium => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray100,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeMedium => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelLargeMontserratWhiteA700 =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeMontserratff242b5c =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: Color(0XFF242B5C),
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeOnPrimaryContainerSemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeff242b5c => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF242B5C),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeff242b5c_1 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF242B5C),
      );
  static get labelLargeff53577a => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF53577A),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumBluegray600 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray600,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumBluegray600SemiBold =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray600,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBluegray600_1 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray600,
      );
  static get labelMediumBold => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelMediumGray100 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray100,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumOnPrimaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumOnPrimaryContainer_1 =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelMediumSemiBold => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelMediumWhiteA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelMediumWhiteA700Bold => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumff242b5c => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFF242B5C),
        fontWeight: FontWeight.w600,
      );
  static get labelSmallBluegray80001 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get labelSmallBold => theme.textTheme.labelSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelSmallGray100 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray100,
      );
  static get labelSmallOnPrimaryContainer =>
      theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelSmallWhiteA700 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelSmallWhiteA700SemiBold =>
      theme.textTheme.labelSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get labelSmallWhiteA700SemiBold_1 =>
      theme.textTheme.labelSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumBluegray50 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray50,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMontserrat =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumMontserratWhiteA700 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumMontserratWhiteA700Bold =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumMontserratff242b5c =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: Color(0XFF242B5C),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get titleMediumRedA200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.redA200,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
      );
  static get titleMediumWhiteA700_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumff242b5c => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF242B5C),
      );
  static get titleSmallBluegray50 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray50,
      );
  static get titleSmallBluegray600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray600,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray600_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray600,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMontserratWhiteA700 =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallPrimaryBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallWhiteA700Medium => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallWhiteA700_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
}

extension on TextStyle {
  TextStyle get raleway {
    return copyWith(
      fontFamily: 'Raleway',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }
}
