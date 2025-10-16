import 'package:flutter/material.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_colors.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_sizes.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_text_styles.dart';

/* -- Light & Dark Elevated Button Themes -- */
class RTextButtonTheme {
  RTextButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightTextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      padding: EdgeInsets.zero,
visualDensity: VisualDensity.compact,
      disabledForegroundColor: AppColors.white2,
      foregroundColor: AppColors.white,
      iconSize: AppSizes.h10,
      backgroundColor: Colors.transparent,side: BorderSide.none,
      disabledBackgroundColor: AppColors.black4,
      textStyle: AppTextStyles.interMediumRegular,
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
