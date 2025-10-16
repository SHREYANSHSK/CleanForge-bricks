import 'package:flutter/material.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_colors.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_sizes.dart';

class RFloatingActionButtonTheme {
  RFloatingActionButtonTheme._();

  static FloatingActionButtonThemeData lightFloatingActionButtonTheme =
      FloatingActionButtonThemeData(
    backgroundColor: AppColors.cyan,
    foregroundColor: AppColors.black,
    disabledElevation: 0,
    iconSize: AppSizes.v24,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.v16)),
    elevation: 0,
  );

  // static FloatingActionButtonThemeData darkFloatingActionButtonTheme = FloatingActionButtonThemeData(
  //   backgroundColor: RColors.primary,
  //   foregroundColor: RColors.white,
  //   elevation: 0,
  // );
}
