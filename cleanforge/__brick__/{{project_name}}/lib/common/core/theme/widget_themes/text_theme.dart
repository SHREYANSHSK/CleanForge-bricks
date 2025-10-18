import 'package:{{package_name}}/common/resources/app_resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_text_styles.dart';

class RTextTheme {
  RTextTheme._();

  /// Defines the text theme for the light mode of the application.
  static final TextTheme lightTextTheme = TextTheme(
    // Display Styles: Used for large, prominent text, like headlines on a landing page.
    displayLarge: AppTextStyles.interExtraExtraLargeExtraBold.copyWith(color: AppColors.black),
    displayMedium: AppTextStyles.interExtraLargeExtraBold.copyWith(color: AppColors.black),
    displaySmall: AppTextStyles.interLargeExtraBold.copyWith(color: AppColors.black),

    // Headline Styles: Suitable for headlines in standard app screens.
    headlineLarge: AppTextStyles.interLargeBold.copyWith(color: AppColors.black),
    headlineMedium: AppTextStyles.interMediumBold.copyWith(color: AppColors.black),
    headlineSmall: AppTextStyles.interNormalBold.copyWith(color: AppColors.black),

    // Title Styles: Typically used for titles of components like AppBars or Cards.
    titleLarge: AppTextStyles.interLargeBold.copyWith(color: AppColors.black),
    titleMedium: AppTextStyles.interNormalBold.copyWith(color: AppColors.black),
    titleSmall: AppTextStyles.interSmallBold.copyWith(color: AppColors.black),

    // Body Styles: The default styles for most text content in the app.
    bodyLarge: AppTextStyles.interNormalRegular.copyWith(color: AppColors.black),
    bodyMedium: AppTextStyles.interSmallRegular.copyWith(color: AppColors.black),
    bodySmall: AppTextStyles.interExtraSmallRegular.copyWith(color: AppColors.black),

    // Label Styles: Used for text on buttons, or as labels for form fields.
    labelLarge: AppTextStyles.interNormalMedium.copyWith(color: AppColors.black),
    labelMedium: AppTextStyles.interSmallMedium.copyWith(color: AppColors.black),
    labelSmall: AppTextStyles.interExtraSmallMedium.copyWith(color: AppColors.black),
       
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
