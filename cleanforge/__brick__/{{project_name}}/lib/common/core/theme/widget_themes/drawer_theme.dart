import 'package:flutter/material.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_colors.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_sizes.dart';

class RDrawerTheme {
  RDrawerTheme._();

  static DrawerThemeData lightDrawerTheme = DrawerThemeData(
    elevation: 0,
    endShape:  RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(AppSizes.v25),
        bottomLeft: Radius.circular(AppSizes.v25),
      ),
    ),
    shadowColor: AppColors.cyan,
    backgroundColor: AppColors.black2,
  );

  // static DrawerThemeData darkDrawerTheme = DrawerThemeData(
  //   elevation: 0,
  //   backgroundColor: RColors.black,
  //   contentTextStyle: TTextTheme.darkTextTheme.bodyText1,
  // );
}
