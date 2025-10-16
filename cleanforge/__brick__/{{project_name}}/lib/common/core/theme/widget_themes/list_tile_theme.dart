import 'package:flutter/material.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_colors.dart';

class RListTileTheme {
  RListTileTheme._();

  static ListTileThemeData lightListTileTheme = ListTileThemeData(
    tileColor: AppColors.black2,
    iconColor: AppColors.white,
    textColor: AppColors.white,
    selectedColor: AppColors.cyan,
    selectedTileColor: AppColors.cyan,

  );
}
