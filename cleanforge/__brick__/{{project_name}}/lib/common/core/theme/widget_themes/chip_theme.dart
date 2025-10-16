import 'package:flutter/material.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_colors.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_sizes.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_text_styles.dart';

class RChipTheme {
  RChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(

    labelStyle: AppTextStyles.interMediumMedium,
    backgroundColor: AppColors.black,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.v24),side: BorderSide(color: AppColors.cyanbg)),
    deleteIconColor: AppColors.white,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5),

  );

  // static ChipThemeData darkChipTheme = const ChipThemeData(
  //   disabledColor: RColors.darkerGrey,
  //   labelStyle: TextStyle(color: RColors.white),
  //   selectedColor: RColors.primary,
  //   padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
  //   checkmarkColor: RColors.white,
  // );
}
