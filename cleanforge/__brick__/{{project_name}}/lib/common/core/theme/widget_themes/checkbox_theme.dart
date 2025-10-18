import 'package:flutter/material.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_colors.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_sizes.dart';

/// Custom Class for Light & Dark Text Themes
class RCheckboxTheme {
  RCheckboxTheme._();

  /// Customizable Light Text Theme
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    side: BorderSide(width: AppSizes.w1, color: AppColors.black4),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSizes.v4),
    ),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.black4;
      } else {
        return AppColors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.primary;
      } else {
        return Colors.transparent;
      }
    }),
  );

  /// Customizable Dark Text Theme
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    side: BorderSide(width: AppSizes.w1, color: AppColors.white),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSizes.v4),
    ),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.white;
      } else {
        return AppColors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.primary;
      } else {
        return Colors.transparent;
      }
    }),
  );
}
