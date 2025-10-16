import 'package:flutter/material.dart';
import 'package:{{project_name}}/common/resources/app_resources/app_colors.dart';
import 'package:{{project_name}}/common/resources/app_resources/app_sizes.dart';
import 'package:{{project_name}}/common/resources/app_resources/app_text_styles.dart';

class RTextFormFieldTheme {
  RTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    filled: true,
    fillColor: AppColors.black2,

    // Icon colors
    prefixIconColor: AppColors.white2,
    suffixIconColor: AppColors.white2,

    // Text styles
    hintStyle: AppTextStyles.interSmallMedium.copyWith(
      color: AppColors.white2,
    ),
    labelStyle: AppTextStyles.interExtraSmallMedium.copyWith(
      color: AppColors.white2,
    ),
    floatingLabelStyle: AppTextStyles.interExtraSmallMedium.copyWith(
      color: AppColors.white,
    ),
    errorStyle: AppTextStyles.interExtraSmallRegular.copyWith(
      color: Colors.red,
      height: 1.2,
    ),
    helperStyle: AppTextStyles.interExtraSmallRegular.copyWith(
      color: AppColors.white2.withValues(alpha: 0.8),
    ),

    // Content padding
    contentPadding: EdgeInsets.symmetric(
      horizontal: AppSizes.v16,
      vertical: AppSizes.v12,
    ),

    // Borders
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.r6),
      borderSide: BorderSide(color: AppColors.black4),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.r6),
      borderSide: BorderSide(color: AppColors.cyanbg),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.r6),
      borderSide: BorderSide(color: AppColors.cyanbg, width: 2),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.r6),
      borderSide: BorderSide(color: Colors.red, width: 1),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.r6),
      borderSide: BorderSide(color: Colors.red, width: 2),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.r6),
      borderSide: BorderSide(color: AppColors.black4.withValues(alpha: 0.5)),
    ),
  );

  /*static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    filled: true,
    fillColor: AppColors.black2,

    // Icon colors
    prefixIconColor: AppColors.white2,
    suffixIconColor: AppColors.white2,

    // Text styles
    hintStyle: AppTextStyles.interExtraSmallRegular.copyWith(
      color: AppColors.white2.withOpacity(0.6),
    ),
    labelStyle: AppTextStyles.interExtraSmallMedium.copyWith(
      color: AppColors.white2,
    ),
    floatingLabelStyle: AppTextStyles.interExtraSmallMedium.copyWith(
      color: AppColors.white,
    ),
    errorStyle: AppTextStyles.interExtraSmallRegular.copyWith(
      color: Colors.redAccent,
      height: 1.2,
    ),
    helperStyle: AppTextStyles.interExtraSmallRegular.copyWith(
      color: AppColors.white2.withOpacity(0.7),
    ),

    // Content padding
    contentPadding: EdgeInsets.symmetric(
      horizontal: AppSizes.v16,
      vertical: AppSizes.v12,
    ),

    // Borders
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.r6),
      borderSide: BorderSide(color: AppColors.black4),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.r6),
      borderSide: BorderSide(color: AppColors.black4),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.r6),
      borderSide: BorderSide(color: AppColors.cyan, width: 2),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.r6),
      borderSide: BorderSide(color: Colors.redAccent, width: 1),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.r6),
      borderSide: BorderSide(color: Colors.redAccent, width: 2),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.r6),
      borderSide: BorderSide(color: AppColors.black4.withOpacity(0.3)),
    ),
  );

  // Custom theme for specific use cases
  static InputDecorationTheme searchFieldTheme = InputDecorationTheme(
    filled: true,
    fillColor: AppColors.black2.withOpacity(0.8),
    hintStyle: AppTextStyles.interSmallRegular.copyWith(
      color: AppColors.white2.withOpacity(0.6),
    ),
    prefixIconColor: AppColors.white2,
    contentPadding: EdgeInsets.symmetric(
      horizontal: AppSizes.v12,
      vertical: AppSizes.v8,
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
      borderSide: BorderSide(color: AppColors.cyan, width: 1),
    ),
  );*/
}
