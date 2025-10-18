import 'package:dio/dio.dart';
import 'package:{{package_name}}/common/core/utils/logger/app_logger.dart';
import 'package:{{package_name}}/common/resources/network_resources/network_info/network_info.dart';
import 'package:{{package_name}}/common/resources/network_resources/rest_client/clients/dio_client/dio_interceptor.dart';
import 'package:{{package_name}}/common/resources/network_resources/rest_client/rest_client.dart';
import 'package:{{package_name}}/common/widgets/toast_message.dart';
import 'package:toastification/toastification.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:{{package_name}}/common/resources/storage_resources/local_keys.dart';
import 'package:{{package_name}}/common/resources/storage_resources/local_client.dart';

class DioClient extends RestClient {
  late final Dio _dio;
  final NetworkInfo networkInfo;

  DioClient({required this.networkInfo})
    : _dio = Dio(
        BaseOptions(
          baseUrl: dotenv.env['BASE_URL'] ?? 'default_base_url',
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
          contentType: 'application/json',
          headers: {"Authorization": "Bearer ${LocalClient.getString(
            key: LocalKeys.accessToken,
          )}"},
        ),
      ) {
    // Attach our safe interceptor
    _dio.interceptors.add(DioInterceptor(this));
  }

  @override
  Future<dynamic> delete(String uri, {Map<String, dynamic>? data}) async {
    if (!await networkInfo.isConnected()) {
      showToastNotification(
        title: "oops!",
        body: "Looks Like You are not connected to internet",
        messageType: ToastificationType.error,
      );
      return;
    }
    try {
      final response = await _dio.delete(uri, data: data);
      logResponse(response);
      return response.data;
    } catch (e) {
      if (e is DioException) {
        logError(e);
      }
      rethrow;
    }
  }

  @override
  Future<dynamic> get(
    String uri, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (!await networkInfo.isConnected()) {
        showToastNotification(
          title: "oops!",
          body: "Looks Like You are not connected to internet",
          messageType: ToastificationType.error,
        );
        return;
      }
      final response = await _dio.get(
        uri,
        // queryParameters: queryParameters,
      );
      logResponse(response);
      return response.data;
    } catch (e) {
      if (e is DioException) {
        logError(e);
      }
      rethrow;
    }
  }

  @override
  Future<dynamic> post(
    String uri, {
    dynamic data,
    String? contentType = "application/json",
    Map<String, dynamic>? queryParameters,
  }) async {
    if (!await networkInfo.isConnected()) {
      showToastNotification(
        title: "oops!",
        body: "Looks Like You are not connected to internet",
        messageType: ToastificationType.error,
      );
      return;
    }
    try {
      final response = await _dio.post(
        uri,
        data: data,
        options: Options(headers: {"content-type": contentType}),

        queryParameters: queryParameters,
      );
      logResponse(response);
      return response.data;
    } catch (e) {
      Log.highlight(e);
      if (e is DioException) {
        logError(e);
        return {
          "statusCode": e.response?.statusCode,
          "message":
              e.response?.data is Map
                  ? e.response?.data["message"] ?? e.message
                  : e.message,
          "data": e.response?.data,
        };
      }
    }
  }

  @override
  Future<dynamic> put(
    String uri, {
    FormData? formData,
    dynamic data,
    String? contentType = "application/json",
  }) async {
    if (!await networkInfo.isConnected()) {
      showToastNotification(
        title: "oops!",
        body: "Looks Like You are not connected to internet",
        messageType: ToastificationType.error,
      );
      return;
    }
    try {
      final response = await _dio.put(
        uri,
        data: data ?? formData,
        options: Options(headers: {"content-type": contentType}),
      );
      logResponse(response);
      return response.data;
    } catch (e) {
      if (e is DioException) {
        logError(e);
      }
      rethrow;
    }
  }

  @override
  Future<dynamic> upload(
    String uri, {
    required FormData formData,
    Map<String, dynamic>? queryParameters,
    void Function(int, int)? onSendProgress,
  }) async {
    if (!await networkInfo.isConnected()) {
      showToastNotification(
        title: "oops!",
        body: "Looks Like You are not connected to internet",
        messageType: ToastificationType.error,
      );
      return;
    }
    try {
      final response = await _dio.post(
        uri,
        data: formData,
        queryParameters: queryParameters,
        options: Options(contentType: 'multipart/form-data'),
        onSendProgress: onSendProgress,
      );
      logResponse(response);
      return response.data;
    } catch (e) {
      if (e is DioException) {
        logError(e);
      }
      rethrow;
    }
  }

  @override
  Future<dynamic> patch(String uri, {Map<String, dynamic>? data}) async {
    if (!await networkInfo.isConnected()) {
      showToastNotification(
        title: "oops!",
        body: "Looks Like You are not connected to internet",
        messageType: ToastificationType.error,
      );
      return;
    }

    try {
      final response = await _dio.patch(uri, data: data);
      logResponse(response);
      return response.data;
    } catch (e) {
      if (e is DioException) {
        logError(e);
      }
      rethrow;
    }
  }
}
