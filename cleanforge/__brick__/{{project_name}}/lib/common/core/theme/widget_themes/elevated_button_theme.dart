import 'package:flutter/material.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_colors.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_sizes.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_text_styles.dart';

/* -- Light & Dark Elevated Button Themes -- */
class RElevatedButtonTheme {
  RElevatedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: AppTextStyles.interExtraSmallMedium,
      overlayColor: AppColors.cyan,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.r6),
      ),
    ),
  );

  /* -- Dark Theme -- */
  // static final darkElevatedButtonTheme = ElevatedButtonThemeData(
  //   style: ElevatedButton.styleFrom(
  //     elevation: 0,
  //     foregroundColor: RColors.light,
  //     backgroundColor: RColors.primary,
  //     disabledForegroundColor: RColors.darkGrey,
  //     disabledBackgroundColor: RColors.darkerGrey,
  //     side: const BorderSide(color: RColors.primary),
  //     padding: const EdgeInsets.symmetric(vertical: RSizes.buttonHeight),
  //     textStyle: const TextStyle(
  //         fontSize: 16, color: RColors.textWhite, fontWeight: FontWeight.w600),
  //     shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(RSizes.buttonRadius)),
  //   ),
  // );
}
