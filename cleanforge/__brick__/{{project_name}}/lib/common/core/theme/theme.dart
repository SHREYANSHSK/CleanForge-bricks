import 'package:flutter/material.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_colors.dart';
import 'widget_themes/text_theme.dart';
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
import 'widget_themes/text_field_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    disabledColor: AppColors.black2,
    brightness: Brightness.light,
    primaryColor: AppColors.black,
    chipTheme: RChipTheme.lightChipTheme,
    scaffoldBackgroundColor: AppColors.black,
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
    textTheme: RTextTheme.lightTextTheme

  );

  // static ThemeData darkTheme = ThemeData(
  //   useMaterial3: true,
  //   disabledColor: RColors.grey,
  //   brightness: Brightness.dark,
  //   primaryColor: RColors.primary,
  //   textTheme: TTextTheme.darkTextTheme,
  //   chipTheme: TChipTheme.darkChipTheme,
  //   scaffoldBackgroundColor: RColors.black,
  //   appBarTheme: TAppBarTheme.darkAppBarTheme,
  //   checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
  //   bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
  //   elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
  //   outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
  //   inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  // );
}
