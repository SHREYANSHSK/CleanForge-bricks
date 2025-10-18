import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:{{package_name}}/common/resources/storage_resources/local_keys.dart';
import 'package:{{package_name}}/common/resources/storage_resources/local_client.dart';

/// ThemeController manages theme state and persistence using GetX
/// Provides methods to toggle between light and dark themes
/// Best Practice: Centralizes theme management logic
class ThemeController extends GetxController {
  static final Rx<ThemeMode> currentTheme = ThemeMode.system.obs;

  @override
  void onInit() {
    super.onInit();
    loadThemeFromStorage();
  }

  /// Load saved theme preference from storage
  static Future<void> loadThemeFromStorage() async {
    try {
      final String? savedTheme = await LocalClient.getValue<String>(
        key: LocalKeys.themePreferenceKey,
      );

      if (savedTheme != null) {
        switch (savedTheme) {
          case 'light':
            currentTheme.value = ThemeMode.light;
            break;
          case 'dark':
            currentTheme.value = ThemeMode.dark;
            break;
          case 'system':
            currentTheme.value = ThemeMode.system;
            break;
        }
      }
    } catch (e) {
      // If there's an error loading theme, default to system theme
      currentTheme.value = ThemeMode.system;
    }
  }

  /// Save theme preference to storage
  static Future<void> _saveThemeToStorage(ThemeMode theme) async {
    String themeString;
    switch (theme) {
      case ThemeMode.light:
        themeString = 'light';
        break;
      case ThemeMode.dark:
        themeString = 'dark';
        break;
      case ThemeMode.system:
        themeString = 'system';
        break;
    }

    await LocalClient.saveValue(
      key: LocalKeys.themePreferenceKey,
      value: themeString,
    );
  }

  /// Toggle between light and dark themes
  static Future<void> toggleTheme() async {
    ThemeMode newTheme = currentTheme.value == ThemeMode.light
        ? ThemeMode.dark
        : ThemeMode.light;

    currentTheme.value = newTheme;
    await _saveThemeToStorage(newTheme);
  }

  /// Set specific theme mode
  static Future<void> setThemeMode(ThemeMode mode) async {
    currentTheme.value = mode;
    await _saveThemeToStorage(mode);
  }

  /// Check if dark mode is currently active
  static bool get isDarkMode => currentTheme.value == ThemeMode.dark;

  /// Check if light mode is currently active
  static bool get isLightMode => currentTheme.value == ThemeMode.light;

  /// Check if system mode is currently active
  static bool get isSystemMode => currentTheme.value == ThemeMode.system;
}
