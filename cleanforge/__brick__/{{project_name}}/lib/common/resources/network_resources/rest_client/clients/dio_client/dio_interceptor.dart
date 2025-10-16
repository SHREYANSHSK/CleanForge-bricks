import 'package:dio/dio.dart';
import 'dio_client.dart';
import 'package:{{project_name}}/common/resources/storage_resources/localKeys.dart';
import 'package:{{project_name}}/common/resources/storage_resources/local_client.dart';

class DioInterceptor extends Interceptor {
  final DioClient client;
  final String? token;

  DioInterceptor(this.client, {this.token});
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.clear();

    options.headers.addAll({
      "content-type": "application/json",
        "Authorization": "Bearer ${LocalClient.getString(
        key: LocalKeys.accessToken,
      )}",
    });
    client.logRequest(options);
    super.onRequest(options, handler);
  }

}
