import 'package:flutter/material.dart';
import 'package:{{project_name}}/common/resources/app_resources/app_colors.dart';
import 'package:{{project_name}}/common/resources/app_resources/app_sizes.dart';
import 'text_field_theme.dart';

class RDropdownMenuTheme {
  RDropdownMenuTheme._();

  static DropdownMenuThemeData lightDropdownMenuTheme = DropdownMenuThemeData(
    inputDecorationTheme: RTextFormFieldTheme.lightInputDecorationTheme,
    menuStyle: MenuStyle(
      backgroundColor: WidgetStateProperty.all<Color>(AppColors.black2),
      shape: WidgetStateProperty.all<OutlinedBorder>(
        ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.v16),
        ),
      ),
      fixedSize: WidgetStateProperty.all<Size>(const Size(200, 200)),
      side: WidgetStateProperty.all<BorderSide>(
        const BorderSide(color: AppColors.cyan, width: 1),
      ),
    ),
  );
}
