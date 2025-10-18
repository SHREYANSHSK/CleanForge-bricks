import 'package:flutter/material.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_colors.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_sizes.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_text_styles.dart';

class ROutlinedButtonTheme {
  ROutlinedButtonTheme._();

  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: AppColors.black2,
      side: const BorderSide(color: AppColors.primary),
      textStyle: AppTextStyles.interMediumSemiBold,
      padding: EdgeInsets.symmetric(
          vertical: AppSizes.h20, horizontal: AppSizes.w20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.f16)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppColors.white,
      side: const BorderSide(color: AppColors.black),
      textStyle: AppTextStyles.interMediumSemiBold,
      padding: EdgeInsets.symmetric(
          vertical: AppSizes.h20, horizontal: AppSizes.w20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.f16)),
    ),
  );
}
