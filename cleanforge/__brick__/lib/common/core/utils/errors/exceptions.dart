import 'package:{{project_name}}/common/resources/app_resources/app_map_keys.dart';
import 'package:{{project_name}}/common/core/utils/logger/app_logger.dart';
import 'package:{{project_name}}/common/resources/storage_resources/local_client.dart';

class APIException implements Exception {
  final String message;
  final int statusCode;

  APIException({required this.message, required this.statusCode}) {
    _handleInvalidToken();
  }

  void _handleInvalidToken() async {
    Log.verbose("message");
    Log.verbose(message);
    if (message.toLowerCase().contains("invalid token") ||
        statusCode == 401) {
      await LocalClient.clearAll();
      AppMapKeys.accessToken = "";
    }
  }

  @override
  String toString() => "$message (code: $statusCode)";
}



class StorageException implements Exception {
  const StorageException({
    required this.message,
  });
  final String message;
}
