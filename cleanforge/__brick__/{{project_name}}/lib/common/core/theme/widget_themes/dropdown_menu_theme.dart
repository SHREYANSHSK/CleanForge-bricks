import 'package:flutter/material.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_colors.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_sizes.dart';
import 'input_decoration_theme.dart';

class RDropdownMenuTheme {
  RDropdownMenuTheme._();

  /// Theme configuration for DropdownMenu in light mode.
  static DropdownMenuThemeData lightDropdownMenuTheme = DropdownMenuThemeData(
    inputDecorationTheme: RTextFormFieldTheme.lightInputDecorationTheme,
    menuStyle: MenuStyle(
      backgroundColor: WidgetStateProperty.all<Color>(AppColors.cardBackground),
      shape: WidgetStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.r8),
        ),
      ),

      side: WidgetStateProperty.all<BorderSide>(
        const BorderSide(color: AppColors.white2),
      ),
    ),
  );

  /// Theme configuration for DropdownMenu in dark mode.
  static DropdownMenuThemeData darkDropdownMenuTheme = DropdownMenuThemeData(
    inputDecorationTheme: RTextFormFieldTheme.darkInputDecorationTheme,
    menuStyle: MenuStyle(
      backgroundColor: WidgetStateProperty.all<Color>(AppColors.black2),
      shape: WidgetStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.r8),
        ),
      ),
      side: WidgetStateProperty.all<BorderSide>(
        const BorderSide(color: AppColors.black4),
      ),
    ),
  );
}
