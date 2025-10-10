import 'dart:convert';
import 'package:get_storage/get_storage.dart';
import 'package:{{project_name}}/common/core/utils/logger/app_logger.dart';

class LocalClient {
  static final GetStorage _box = GetStorage();

  /// Initialize GetStorage before use (call in main)
  static Future<void> init() async {
    await GetStorage.init();
  }

  // Save a value to storage.
  static Future<void> saveValue({
    required String key,
    required dynamic value,
  }) async {
    if (value is String ||
        value is int ||
        value is double ||
        value is bool ||
        value is List<String>) {
      await _box.write(key, value);
    } else {
      await _box.write(key, jsonEncode(value));
    }
  }

  // Retrieve a generic value from storage.
  static Future<T?> getValue<T>({
    required String key,
    T? defaultValue,
  }) async {
    final value = _box.read(key);

    if (value is T) {
      return value;
    }

    // If stored as a string, try to decode it as JSON.
    if (value is String) {
      try {
        final decoded = jsonDecode(value);
        if (decoded is T) {
          return decoded;
        }
      } catch (e) {
        Log.error(e);
      }
    }

    return defaultValue;
  }

  // Remove a value from storage.
  static Future<void> removeValue({required String key}) async {
    await _box.remove(key);
  }

  // Check if a key exists in storage.
  static Future<bool> hasKey({required String key}) async {
    return _box.hasData(key);
  }

  // Clear all data from storage.
  static Future<void> clearAll() async {
    await _box.erase();
  }

  // Save a list to storage by encoding it to JSON.
  static Future<void> saveList({
    required String key,
    required List<dynamic> value,
  }) async {
    await _box.write(key, jsonEncode(value));
  }

  // Retrieve a list from storage by decoding JSON.
  static Future<List<dynamic>?> getList({
    required String key,
    List<dynamic>? defaultValue,
  }) async {
    final jsonString = _box.read(key);
    if (jsonString != null) {
      try {
        return jsonDecode(jsonString) as List<dynamic>;
      } catch (e) {
        Log.error(e);
        return defaultValue;
      }
    }
    return defaultValue;
  }

  // Save a boolean value to storage.
  static Future<void> saveBool({
    required String key,
    required bool value,
  }) async {
    await _box.write(key, value);
  }

  // Retrieve a boolean value from storage.
  static Future<bool> getBool({
    required String key,
    bool defaultValue = false,
  }) async {
    return _box.read(key) ?? defaultValue;
  }

  // Save an integer value to storage.
  static Future<void> saveInt({
    required String key,
    required int value,
  }) async {
    await _box.write(key, value);
  }

  // Retrieve an integer value from storage.
  static Future<int> getInt({
    required String key,
    int defaultValue = 0,
  }) async {
    return _box.read(key) ?? defaultValue;
  }

  // Save a double value to storage.
  static Future<void> saveDouble({
    required String key,
    required double value,
  }) async {
    await _box.write(key, value);
  }

  // Retrieve a double value from storage.
  static Future<double> getDouble({
    required String key,
    double defaultValue = 0.0,
  }) async {
    return _box.read(key) ?? defaultValue;
  }

  // Save a string value to storage.
  static Future<void> saveString({
    required String key,
    required String value,
  }) async {
    await _box.write(key, value);
  }

  // Retrieve a string value from storage.
  static Future<String> getString({
    required String key,
    String defaultValue = '',
  }) async {
    return _box.read(key) ?? defaultValue;
  }
}
