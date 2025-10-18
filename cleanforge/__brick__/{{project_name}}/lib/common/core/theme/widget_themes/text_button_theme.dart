import 'package:flutter/material.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_colors.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_sizes.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_text_styles.dart';

class RTextButtonTheme {
  RTextButtonTheme._();

  /// Theme configuration for TextButton in light mode.
  static final lightTextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: AppColors.white,
      disabledForegroundColor: AppColors.white2,
      backgroundColor: Colors.transparent,
      side: BorderSide.none,
      padding: EdgeInsets.zero,
      visualDensity: VisualDensity.compact,
      iconSize: AppSizes.h16,
      textStyle: AppTextStyles.interMediumRegular.copyWith(color: AppColors.black),
    ),
  );

  /// Theme configuration for TextButton in dark mode.
  static final darkTextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: AppColors.white,
      disabledForegroundColor: AppColors.white2,
      backgroundColor: Colors.transparent,
      side: BorderSide.none,
      padding: EdgeInsets.zero,
      visualDensity: VisualDensity.compact,
      iconSize: AppSizes.h16,
      textStyle: AppTextStyles.interMediumRegular.copyWith(color: AppColors.white),
    ),
  );
}
