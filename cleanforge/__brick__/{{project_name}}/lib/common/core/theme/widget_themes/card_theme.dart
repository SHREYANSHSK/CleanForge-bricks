import 'package:flutter/material.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_colors.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_sizes.dart';

class RCardTheme {
  RCardTheme._();

  static CardTheme lightCardTheme = CardTheme(
    color: AppColors.white,
    shadowColor: AppColors.black,
    elevation: 2,
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSizes.r8),
      side: const BorderSide(color: AppColors.black2, width: 1),
    ),
  );

  static CardTheme darkCardTheme = CardTheme(
    color: AppColors.black5,
    shadowColor: AppColors.white,
    elevation: 2,
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSizes.r8),
      side: const BorderSide(color: AppColors.white, width: 1),
    ),
  );
}
