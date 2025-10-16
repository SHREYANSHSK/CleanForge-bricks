import 'package:{{package_name}}/common/core/utils/logger/app_logger.dart';
import 'package:{{package_name}}/common/resources/storage_resources/local_client.dart';

class APIException implements Exception {
  final String message;
  final int statusCode;

  APIException({required this.message, required this.statusCode}) {
    _handleInvalidToken();
  }

  Future<void> _handleInvalidToken() async {
    Log.verbose("APIException triggered: $message ($statusCode)");
    if (message.toLowerCase().contains("invalid token") || statusCode == 401) {
      await LocalClient.clearAll();
      Log.info("Access token cleared due to invalid/expired token.");
    }
  }

  @override
  String toString() => "$message (code: $statusCode)";
}

class StorageException implements Exception {
  final String message;
  const StorageException({required this.message});

  @override
  String toString() => "StorageException: $message";
}
