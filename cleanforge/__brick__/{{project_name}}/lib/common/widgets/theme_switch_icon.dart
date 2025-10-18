import 'package:{{package_name}}/common/resources/multimedia_resources/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:{{package_name}}/common/core/theme/theme_controller.dart';
import 'package:get/get.dart';

/// A common widget that provides a button to toggle between light and dark themes
class ThemeSwitchIcon extends StatelessWidget {
  const ThemeSwitchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        ThemeController.isLightMode ? AppIcons.darkMode : AppIcons.lightMode,
        color: Theme.of(context).iconTheme.color,
      ),
      onPressed: () {
        ThemeController.toggleTheme();
        Get.changeThemeMode(ThemeController.currentTheme.value);
      },
      tooltip: Get.isDarkMode ? 'Switch to Light Mode' : 'Switch to Dark Mode',
    );
  }
}
