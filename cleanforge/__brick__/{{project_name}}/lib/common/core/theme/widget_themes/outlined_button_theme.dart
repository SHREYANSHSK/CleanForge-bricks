import 'package:flutter/material.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_colors.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_sizes.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_text_styles.dart';

/* -- Light & Dark Outlined Button Themes -- */
class ROutlinedButtonTheme {
  ROutlinedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: AppColors.black2,
      side: const BorderSide(color: AppColors.cyan),
      textStyle: AppTextStyles.interMediumSemiBold,
      padding:  EdgeInsets.symmetric(
          vertical: AppSizes.h20, horizontal: AppSizes.w20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.f16)),
    ),
  );

  /* -- Dark Theme -- */
  // static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
  //   style: OutlinedButton.styleFrom(
  //     foregroundColor: RColors.light,
  //     side: const BorderSide(color: RColors.borderPrimary),
  //     textStyle: const TextStyle(
  //         fontSize: 16, color: RColors.textWhite, fontWeight: FontWeight.w600),
  //     padding: const EdgeInsets.symmetric(
  //         vertical: RSizes.buttonHeight, horizontal: 20),
  //     shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(RSizes.buttonRadius)),
  //   ),
  // );
}
