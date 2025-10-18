import 'package:{{package_name}}/common/resources/storage_resources/local_client.dart';
import 'package:{{package_name}}/common/resources/storage_resources/local_keys.dart';
import 'package:{{package_name}}/common/resources/storage_resources/local_keys.dart';
import 'package:{{package_name}}/common/core/utils/errors/exceptions.dart';
import 'package:{{package_name}}/common/core/utils/logger/app_logger.dart';



abstract class {{feat.pascalCase()}}LocalDataSource {
  Future<void> setAccessToken(String accessToken);
  Future<void> setUserId(String userId);
  Future<void> clearAll();
}

class {{feat.pascalCase()}}LocalDataSourceImpl implements {{feat.pascalCase()}}LocalDataSource {
  @override
  Future<void> setAccessToken(String accessToken) async {
    try {
      await LocalClient.saveString(
        key: LocalKeys.accessToken,
        value: accessToken,
      );
      Log.info("Access token saved successfully");
    } catch (e,stackTrace) {
        Log.error("Error saving access token", e, stackTrace);
        throw const StorageException(message: "Failed to save access token");
    }
  }

  @override
  Future<void> setUserId(String userId) async {
    try {
      await LocalClient.saveString(
        key: LocalKeys.userId,
        value: userId,
      );
      Log.info("User ID saved successfully");
    } catch (e, stackTrace) {
        Log.error("Error saving user ID", e, stackTrace);
        throw const StorageException(message: "Failed to save user ID");
      }
  }

  @override
  Future<void> clearAll() async {
    try {
      await LocalClient.clearAll();
      Log.info("Local data cleared successfully");
    } catch (e, stackTrace) {
        Log.error("Error clearing local data", e, stackTrace);
        throw const StorageException(message: "Failed to clear local data");
      }
    }
}