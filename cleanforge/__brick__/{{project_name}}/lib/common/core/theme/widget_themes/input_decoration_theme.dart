import 'package:flutter/material.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_colors.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_sizes.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_text_styles.dart';

class RTextFormFieldTheme {
  RTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    filled: true,
    fillColor: AppColors.white,

    // Icon colors
    prefixIconColor: AppColors.primary,
    suffixIconColor: AppColors.primary,

    // Text styles
    hintStyle: AppTextStyles.interNormalRegular.copyWith(
      color: AppColors.black2,
    ),
    labelStyle: AppTextStyles.interExtraSmallMedium.copyWith(
      color: AppColors.black2,
    ),
    floatingLabelStyle: AppTextStyles.interExtraSmallMedium.copyWith(
      color: AppColors.primary,
    ),
    errorStyle: AppTextStyles.interExtraSmallRegular.copyWith(
      color: AppColors.red,
      height: 1.2,
    ),
    helperStyle: AppTextStyles.interExtraSmallRegular.copyWith(
      color: AppColors.black4,
    ),

    // Content padding
    contentPadding: EdgeInsets.symmetric(
      horizontal: AppSizes.w16,
      vertical: AppSizes.h16,
    ),

    // Borders
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.r8),
      borderSide: BorderSide(color: AppColors.primary, width: AppSizes.w1),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.r8),
      borderSide: BorderSide(color: AppColors.primary, width: AppSizes.w1),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.r8),
      borderSide: BorderSide(color: AppColors.blue, width: AppSizes.w2),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.r8),
      borderSide: const BorderSide(color: AppColors.red),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.r8),
      borderSide: BorderSide(color: AppColors.red, width: AppSizes.w2),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    filled: true,
    fillColor: AppColors.black6,

    // Icon colors
    prefixIconColor: AppColors.primary,
    suffixIconColor: AppColors.primary,

    // Text styles
    hintStyle: AppTextStyles.interNormalRegular.copyWith(
      color: AppColors.white2,
    ),
    labelStyle: AppTextStyles.interExtraSmallMedium.copyWith(
      color: AppColors.white2,
    ),
    floatingLabelStyle: AppTextStyles.interExtraSmallMedium.copyWith(
      color: AppColors.primary,
    ),
    errorStyle: AppTextStyles.interExtraSmallRegular.copyWith(
      color: AppColors.red,
      height: 1.2,
    ),
    helperStyle: AppTextStyles.interExtraSmallRegular.copyWith(
      color: AppColors.white2,
    ),

    // Content padding
    contentPadding: EdgeInsets.symmetric(
      horizontal: AppSizes.h16,
      vertical: AppSizes.v12,
    ),

    // Borders
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.r8),
      borderSide: BorderSide(color: AppColors.primary, width: AppSizes.w1),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.r8),
      borderSide:
          BorderSide(color: AppColors.primary, width: AppSizes.w1),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.r8),
      borderSide: BorderSide(color: AppColors.primary, width: AppSizes.w2),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.r8),
      borderSide: BorderSide(color: AppColors.red, width: AppSizes.w1),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.r8),
      borderSide: BorderSide(color: AppColors.red, width: AppSizes.w2),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.r8),
      borderSide:
          BorderSide(color: AppColors.white2, width: AppSizes.w1),
    ),
  );

  // Custom theme for specific use cases
  static InputDecorationTheme searchFieldTheme = InputDecorationTheme(
    filled: true,
    fillColor: AppColors.black6,
    hintStyle: AppTextStyles.interSmallRegular.copyWith(
      color: AppColors.white2,
    ),
    prefixIconColor: AppColors.primary,
    contentPadding: EdgeInsets.symmetric(
      horizontal: AppSizes.h12,
      vertical: AppSizes.v12,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.r8),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.r8),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.r8),
      borderSide: BorderSide(color: AppColors.primary, width: AppSizes.w1),
    ),
  );
}
