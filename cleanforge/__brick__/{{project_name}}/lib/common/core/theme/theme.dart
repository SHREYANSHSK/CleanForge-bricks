import 'package:{{package_name}}/common/resources/app_resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'widget_themes/appbar_theme.dart';
import 'widget_themes/bottom_sheet_theme.dart';
import 'widget_themes/checkbox_theme.dart';
import 'widget_themes/chip_theme.dart';
import 'widget_themes/drawer_theme.dart';
import 'widget_themes/dropdown_menu_theme.dart';
import 'widget_themes/elevated_button_theme.dart';
import 'widget_themes/floating_action_button_theme.dart';
import 'widget_themes/list_tile_theme.dart';
import 'widget_themes/outlined_button_theme.dart';
import 'widget_themes/text_button_theme.dart';
import 'widget_themes/input_decoration_theme.dart';
import 'widget_themes/text_theme.dart';

/// [AppTheme] provides centralized theme configuration
/// Demonstrates clean architecture's approach to UI theming with separate light/dark themes
/// Best Practice: Organizes all theme-related configurations in one place for consistency
class AppTheme {
  AppTheme._();

  /// Light theme configuration for the app
  /// Uses bright backgrounds with dark text for optimal readability
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      disabledColor: AppColors.black2,
      brightness: Brightness.light,
      primaryColor: AppColors.primary,
      secondaryHeaderColor: AppColors.purple,
      chipTheme: RChipTheme.lightChipTheme,
      scaffoldBackgroundColor: AppColors.white,
      textTheme: RTextTheme.lightTextTheme,
      appBarTheme: RAppBarTheme.lightAppBarTheme,
      checkboxTheme: RCheckboxTheme.lightCheckboxTheme,
      bottomSheetTheme: RBottomSheetTheme.lightBottomSheetTheme,
      elevatedButtonTheme: RElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: ROutlinedButtonTheme.lightOutlinedButtonTheme,
      textButtonTheme: RTextButtonTheme.lightTextButtonTheme,
      inputDecorationTheme: RTextFormFieldTheme.lightInputDecorationTheme,
      drawerTheme: RDrawerTheme.lightDrawerTheme,
      floatingActionButtonTheme:
          RFloatingActionButtonTheme.lightFloatingActionButtonTheme,
      listTileTheme: RListTileTheme.lightListTileTheme,
      dropdownMenuTheme: RDropdownMenuTheme.lightDropdownMenuTheme,
      iconTheme: const IconThemeData(color: AppColors.black),
      iconButtonTheme: const IconButtonThemeData(
        style: ButtonStyle(
          iconColor: WidgetStatePropertyAll(AppColors.black),
        ),
      ));

  /// Dark theme configuration for the app
  /// Uses darker backgrounds with light text for better night viewing
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      disabledColor: AppColors.white2,
      primaryColor: AppColors.primary,
      secondaryHeaderColor: AppColors.purple,
      chipTheme: RChipTheme.darkChipTheme,
      scaffoldBackgroundColor: AppColors.black,
      textTheme: RTextTheme.darkTextTheme,
      appBarTheme: RAppBarTheme.lightAppBarTheme,
      checkboxTheme: RCheckboxTheme.darkCheckboxTheme,
      bottomSheetTheme: RBottomSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: RElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: ROutlinedButtonTheme.darkOutlinedButtonTheme,
      textButtonTheme: RTextButtonTheme.darkTextButtonTheme,
      inputDecorationTheme: RTextFormFieldTheme.darkInputDecorationTheme,
      drawerTheme: RDrawerTheme.darkDrawerTheme,
      floatingActionButtonTheme:
          RFloatingActionButtonTheme.darkFloatingActionButtonTheme,
      listTileTheme: RListTileTheme.darkListTileTheme,
      dropdownMenuTheme: RDropdownMenuTheme.darkDropdownMenuTheme,
      iconTheme: const IconThemeData(color: AppColors.white),
      iconButtonTheme: const IconButtonThemeData(
        style: ButtonStyle(
          iconColor: WidgetStatePropertyAll(AppColors.white),
        ),
      ));
}
