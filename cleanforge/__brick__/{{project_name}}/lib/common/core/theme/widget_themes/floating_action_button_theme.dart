import 'package:flutter/material.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_colors.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_sizes.dart';

class RFloatingActionButtonTheme {
  RFloatingActionButtonTheme._();

  /// Theme configuration for FloatingActionButton in light mode.
  static FloatingActionButtonThemeData lightFloatingActionButtonTheme =
  FloatingActionButtonThemeData(
    backgroundColor: AppColors.primary,
    foregroundColor: AppColors.black,
    disabledElevation: 0,
    iconSize: AppSizes.v24,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.v16)),
    elevation: 0,
  );

  /// Theme configuration for FloatingActionButton in dark mode.
  static FloatingActionButtonThemeData darkFloatingActionButtonTheme =
  FloatingActionButtonThemeData(
    backgroundColor: AppColors.primary,
    foregroundColor: AppColors.black,
    disabledElevation: 0,
    iconSize: AppSizes.v24,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.v16)),
    elevation: 0,
  );
}
