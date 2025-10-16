import 'package:flutter/material.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_colors.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_sizes.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_text_styles.dart';

class RAppBarTheme {
  RAppBarTheme._();

  static var lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: AppColors.white, size: AppSizes.v24),
    actionsIconTheme:
        IconThemeData(color: AppColors.cyan, size: AppSizes.v24),
    titleTextStyle: AppTextStyles.interExtraExtraLargeSemiBold,
  );

  // static const darkAppBarTheme = AppBarTheme(
  //   elevation: 0,
  //   centerTitle: false,
  //   scrolledUnderElevation: 0,
  //   backgroundColor: Colors.transparent,
  //   surfaceTintColor: Colors.transparent,
  //   iconTheme: IconThemeData(color: RColors.black, size: RSizes.iconMd),
  //   actionsIconTheme: IconThemeData(color: RColors.white, size: RSizes.iconMd),
  //   titleTextStyle: TextStyle(
  //       fontSize: 18.0, fontWeight: FontWeight.w600, color: RColors.white),
  // );
}
