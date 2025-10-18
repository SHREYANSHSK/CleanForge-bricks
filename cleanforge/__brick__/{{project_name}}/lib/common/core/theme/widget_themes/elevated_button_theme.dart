import 'package:flutter/material.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_colors.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_sizes.dart';

class RElevatedButtonTheme {
  RElevatedButtonTheme._();

  /* -- Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.black,
      padding: EdgeInsets.symmetric(
        vertical: AppSizes.h16,
        horizontal: AppSizes.h24,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.r8),
      ),
      elevation: 2,
      shadowColor: AppColors.primaryLight,
      surfaceTintColor: AppColors.primary,
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 2,
      shadowColor: AppColors.primaryDark,
      foregroundColor: AppColors.white,
      backgroundColor: AppColors.primary,
      disabledForegroundColor: AppColors.white2,
      disabledBackgroundColor: AppColors.black3,
      side: const BorderSide(color: AppColors.primary),
      padding: EdgeInsets.symmetric(
        vertical: AppSizes.v16,
        horizontal: AppSizes.h24,
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.r8)),
      surfaceTintColor: AppColors.primary,
    ),
  );
}
