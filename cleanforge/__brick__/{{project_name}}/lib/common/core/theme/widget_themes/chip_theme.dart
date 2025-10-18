import 'package:flutter/material.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_colors.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_sizes.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_text_styles.dart';

class RChipTheme {
  RChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    labelStyle: AppTextStyles.interMediumMedium,
    backgroundColor: AppColors.primaryLight,
    selectedColor: AppColors.primary,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.r8),
        side: BorderSide(color: AppColors.primary, width: AppSizes.w1)),
    deleteIconColor: AppColors.black,
    padding:
        EdgeInsets.symmetric(horizontal: AppSizes.h12, vertical: AppSizes.v8),
    side: const BorderSide(color: AppColors.primary),
    checkmarkColor: AppColors.white,
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: AppColors.black3,
    labelStyle: const TextStyle(color: AppColors.white),
    backgroundColor: AppColors.black6,
    selectedColor: AppColors.primary,
    padding: EdgeInsets.symmetric(horizontal: AppSizes.h12, vertical: AppSizes.v8),
    checkmarkColor: AppColors.black,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.r8),
        side: BorderSide(color: AppColors.primary, width: AppSizes.w1)),
    side: const BorderSide(color: AppColors.primary),
  );
}
