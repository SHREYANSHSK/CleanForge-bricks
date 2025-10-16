import 'package:flutter/material.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_colors.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_sizes.dart';


class RBottomSheetTheme {
  RBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: AppColors.black2,
    dragHandleColor: AppColors.white,
    modalBackgroundColor: AppColors.black2,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.v16)),
  );

  // static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
  //   showDragHandle: true,
  //   backgroundColor: AppColors.black,
  //   modalBackgroundColor: AppColors.black,
  //   constraints: const BoxConstraints(minWidth: double.infinity),
  //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  // );

}
