import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:{{project_name}}/common/core/utils/logger/app_logger.dart';

abstract class RestClient {
  final _encoder = const JsonEncoder.withIndent('  ');

  Map convertFormDataToObject(FormData formData) {
    Map<String, dynamic> dataMap = {'fields': {}, 'files': {}};

    for (var field in formData.fields) {
      dataMap['fields'][field.key] = field.value;
    }

    for (var file in formData.files) {
      dataMap['files'][file.key] = {
        'filename': file.value.filename,
        'contentType': file.value.contentType.toString(),
      };
    }

    return dataMap;
  }

  String requestDetails(RequestOptions options) {
    final StringBuffer buffer = StringBuffer();

    buffer.writeln('URI: ${options.uri}');
    buffer.writeln('Method: ${options.method}');

    if (options.headers.isNotEmpty) {
      buffer.writeln('Headers:');
      options.headers.forEach((key, value) {
        if (key.trim().isNotEmpty) {
          buffer.writeln('  $key: $value');
        }
      });
    } else {
      buffer.writeln('Headers: None');
    }

    if (options.queryParameters.isNotEmpty) {
      buffer.writeln('Query Parameters:');
      options.queryParameters.forEach((key, value) {
        buffer.writeln('  $key: $value');
      });
    } else {
      buffer.writeln('Query Parameters: None');
    }

    if (options.data != null && options.data.toString().isNotEmpty) {
      buffer.writeln(
        'Data: ${_encoder.convert(options.data is FormData ? convertFormDataToObject(options.data) : options.data)}',
      );
    } else {
      buffer.writeln('Data: None');
    }

    if (options.extra.isNotEmpty) {
      buffer.writeln('Extra:');
      options.extra.forEach((key, value) {
        buffer.writeln('  $key: $value');
      });
    } else {
      buffer.writeln('Extra: None');
    }

    return buffer.toString();
  }

  void logRequest(RequestOptions requestOptions) {
    Log.verbose("API Request : \n${requestDetails(requestOptions)}");
  }

  void logResponse(Response response) {
    Log.verbose(
      "API Response from ${requestDetails(response.requestOptions)}Response :\n${_encoder.convert(response.data)}",
    );
  }

  void logError(DioException err) {
    final response = err.response;
    Log.error(
      "API Error from ${requestDetails(err.requestOptions)}"
      "Status: ${response?.statusCode}\n"
      "Message: ${response?.statusMessage}\n"
      "Data: ${response?.data != null ? _encoder.convert(response?.data) : "No response body"}",
    );
  }

  Future<dynamic> get(String uri, {Map<String, dynamic>? queryParameters});

  Future<dynamic> post(
    String uri, {
    Map<String, dynamic>? data,
    String? contentType = "application/json",
  });

  Future<dynamic> put(String uri, {Map<String, dynamic>? data,FormData? formData, String? contentType = "application/json",});

  Future<dynamic> delete(String uri, {Map<String, dynamic>? data});

  Future<dynamic> upload(
    String uri, {
    required FormData formData,
    Map<String, dynamic>? queryParameters,
  void Function(int, int)? onSendProgress
  });

  Future<dynamic> patch(String uri, {Map<String, dynamic>? data});
}
