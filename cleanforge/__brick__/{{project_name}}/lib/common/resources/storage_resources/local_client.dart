import 'dart:convert';
import 'package:get_storage/get_storage.dart';
import 'package:{{project_name}}/common/core/utils/logger/app_logger.dart';

class LocalClient {
  static final GetStorage _box = GetStorage();

  /// Initialize GetStorage before use (call in main)
  static Future<void> init() async {
    try {
      await GetStorage.init();
    } catch (e, stack) {
      Log.error("Error initializing storage: $e\n$stack");
      return Future.error("Failed to initialize local storage");
    }
  }

  /// Save a value to storage.
  static Future<void> saveValue({
    required String key,
    required dynamic value,
  }) async {
    try {
      if (value is String ||
          value is int ||
          value is double ||
          value is bool ||
          value is List<String>) {
        await _box.write(key, value);
      } else {
        await _box.write(key, jsonEncode(value));
      }
    } catch (e, stack) {
      Log.error("Error saving value for key: $key\n$e\n$stack");
      return Future.error("Failed to save value for key: $key");
    }
  }

  /// Retrieve a generic value from storage.
  static Future<T?> getValue<T>({
    required String key,
    T? defaultValue,
  }) async {
    try {
      final value = _box.read(key);

      if (value is T) {
        return value;
      }

      if (value is String) {
        try {
          final decoded = jsonDecode(value);
          if (decoded is T) return decoded;
        } catch (e) {
          Log.error("Error decoding JSON for key: $key\n$e");
        }
      }
      return defaultValue;
    } catch (e, stack) {
      Log.error("Error getting value for key: $key\n$e\n$stack");
      return Future.error("Failed to get value for key: $key");
    }
  }

  /// Remove a value from storage.
  static Future<void> removeValue({required String key}) async {
    try {
      await _box.remove(key);
    } catch (e, stack) {
      Log.error("Error removing key: $key\n$e\n$stack");
      return Future.error("Failed to remove value for key: $key");
    }
  }

  /// Check if a key exists in storage.
  static Future<bool> hasKey({required String key}) async {
    try {
      return _box.hasData(key);
    } catch (e, stack) {
      Log.error("Error checking key: $key\n$e\n$stack");
      return Future.error("Failed to check key: $key");
    }
  }

  /// Clear all data from storage.
  static Future<void> clearAll() async {
    try {
      await _box.erase();
    } catch (e, stack) {
      Log.error("Error clearing all data\n$e\n$stack");
      return Future.error("Failed to clear local storage");
    }
  }

  /// Save a list to storage by encoding it to JSON.
  static Future<void> saveList({
    required String key,
    required List<dynamic> value,
  }) async {
    try {
      await _box.write(key, jsonEncode(value));
    } catch (e, stack) {
      Log.error("Error saving list for key: $key\n$e\n$stack");
      return Future.error("Failed to save list for key: $key");
    }
  }

  /// Retrieve a list from storage by decoding JSON.
  static Future<List<dynamic>?> getList({
    required String key,
    List<dynamic>? defaultValue,
  }) async {
    try {
      final jsonString = _box.read(key);
      if (jsonString != null) {
        try {
          return jsonDecode(jsonString) as List<dynamic>;
        } catch (e) {
          Log.error("Error decoding list for key: $key\n$e");
          return defaultValue;
        }
      }
      return defaultValue;
    } catch (e, stack) {
      Log.error("Error getting list for key: $key\n$e\n$stack");
      return Future.error("Failed to get list for key: $key");
    }
  }

  /// Save a boolean value to storage.
  static Future<void> saveBool({
    required String key,
    required bool value,
  }) async {
    try {
      await _box.write(key, value);
    } catch (e, stack) {
      Log.error("Error saving bool for key: $key\n$e\n$stack");
      return Future.error("Failed to save bool for key: $key");
    }
  }

  /// Retrieve a boolean value from storage.
  static Future<bool> getBool({
    required String key,
    bool defaultValue = false,
  }) async {
    try {
      return _box.read(key) ?? defaultValue;
    } catch (e, stack) {
      Log.error("Error getting bool for key: $key\n$e\n$stack");
      return Future.error("Failed to get bool for key: $key");
    }
  }

  /// Save an integer value to storage.
  static Future<void> saveInt({
    required String key,
    required int value,
  }) async {
    try {
      await _box.write(key, value);
    } catch (e, stack) {
      Log.error("Error saving int for key: $key\n$e\n$stack");
      return Future.error("Failed to save int for key: $key");
    }
  }

  /// Retrieve an integer value from storage.
  static Future<int> getInt({
    required String key,
    int defaultValue = 0,
  }) async {
    try {
      return _box.read(key) ?? defaultValue;
    } catch (e, stack) {
      Log.error("Error getting int for key: $key\n$e\n$stack");
      return Future.error("Failed to get int for key: $key");
    }
  }

  /// Save a double value to storage.
  static Future<void> saveDouble({
    required String key,
    required double value,
  }) async {
    try {
      await _box.write(key, value);
    } catch (e, stack) {
      Log.error("Error saving double for key: $key\n$e\n$stack");
      return Future.error("Failed to save double for key: $key");
    }
  }

  /// Retrieve a double value from storage.
  static Future<double> getDouble({
    required String key,
    double defaultValue = 0.0,
  }) async {
    try {
      return _box.read(key) ?? defaultValue;
    } catch (e, stack) {
      Log.error("Error getting double for key: $key\n$e\n$stack");
      return Future.error("Failed to get double for key: $key");
    }
  }

  /// Save a string value to storage.
  static Future<void> saveString({
    required String key,
    required String value,
  }) async {
    try {
      await _box.write(key, value);
    } catch (e, stack) {
      Log.error("Error saving string for key: $key\n$e\n$stack");
      return Future.error("Failed to save string for key: $key");
    }
  }

  /// Retrieve a string value from storage.
  static Future<String> getString({
    required String key,
    String defaultValue = '',
  }) async {
    try {
      return _box.read(key) ?? defaultValue;
    } catch (e, stack) {
      Log.error("Error getting string for key: $key\n$e\n$stack");
      return Future.error("Failed to get string for key: $key");
    }
  }
}
