import 'package:flutter/material.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_text_styles.dart';

class RTextTheme {
  RTextTheme._();

  /// Defines the text theme for the light mode of the application.
  static final TextTheme lightTextTheme = TextTheme(
    // Display Styles: Used for large, prominent text, like headlines on a landing page.
    displayLarge: AppTextStyles.interExtraExtraLargeExtraBold,
    displayMedium: AppTextStyles.interExtraLargeExtraBold,
    displaySmall: AppTextStyles.interLargeExtraBold,

    // Headline Styles: Suitable for headlines in standard app screens.
    headlineLarge: AppTextStyles.interLargeBold,
    headlineMedium: AppTextStyles.interMediumBold,
    headlineSmall: AppTextStyles.interNormalBold,

    // Title Styles: Typically used for titles of components like AppBars or Cards.
    titleLarge: AppTextStyles.interLargeBold,
    titleMedium: AppTextStyles.interNormalBold,
    titleSmall: AppTextStyles.interSmallBold,

    // Body Styles: The default styles for most text content in the app.
    bodyLarge: AppTextStyles.interNormalRegular,
    bodyMedium: AppTextStyles.interSmallRegular,
    bodySmall: AppTextStyles.interExtraSmallRegular,

    // Label Styles: Used for text on buttons, or as labels for form fields.
    labelLarge: AppTextStyles.interNormalMedium,
    labelMedium: AppTextStyles.interSmallMedium,
    labelSmall: AppTextStyles.interExtraSmallMedium,
  );

  /// Defines the text theme for the dark mode of the application.
  static final TextTheme darkTextTheme = TextTheme(
    // Display Styles: Used for large, prominent text, like headlines on a landing page.
    displayLarge: AppTextStyles.interExtraExtraLargeExtraBold,
    displayMedium: AppTextStyles.interExtraLargeExtraBold,
    displaySmall: AppTextStyles.interLargeExtraBold,

    // Headline Styles: Suitable for headlines in standard app screens.
    headlineLarge: AppTextStyles.interLargeBold,
    headlineMedium: AppTextStyles.interMediumBold,
    headlineSmall: AppTextStyles.interNormalBold,

    // Title Styles: Typically used for titles of components like AppBars or Cards.
    titleLarge: AppTextStyles.interLargeBold,
    titleMedium: AppTextStyles.interNormalBold,
    titleSmall: AppTextStyles.interSmallBold,

    // Body Styles: The default styles for most text content in the app.
    bodyLarge: AppTextStyles.interNormalRegular,
    bodyMedium: AppTextStyles.interSmallRegular,
    bodySmall: AppTextStyles.interExtraSmallRegular,

    // Label Styles: Used for text on buttons, or as labels for form fields.
    labelLarge: AppTextStyles.interNormalMedium,
    labelMedium: AppTextStyles.interSmallMedium,
    labelSmall: AppTextStyles.interExtraSmallMedium,
  );
}
