import 'package:flutter/material.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_colors.dart';

class RListTileTheme {
  RListTileTheme._();

  /// Theme configuration for ListTile in light mode.
  static const ListTileThemeData lightListTileTheme = ListTileThemeData(
    tileColor: AppColors.black2,
    iconColor: AppColors.white,
    textColor: AppColors.white,
    selectedColor: AppColors.black,
    selectedTileColor: AppColors.primary,
  );

  /// Theme configuration for ListTile in dark mode.
  static const ListTileThemeData darkListTileTheme = ListTileThemeData(
    tileColor: AppColors.black,
    iconColor: AppColors.white2,
    textColor: AppColors.white2,
    selectedColor: AppColors.black,
    selectedTileColor: AppColors.primary,
  );
}
