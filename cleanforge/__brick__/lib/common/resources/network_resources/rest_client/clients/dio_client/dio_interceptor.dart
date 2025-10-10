import 'package:dio/dio.dart';
import 'dio_client.dart';
import 'package:{{project_name}}/common/resources/app_resources/app_map_keys.dart';

class DioInterceptor extends Interceptor {
  final DioClient client;
  final String? token;

  DioInterceptor(this.client, {this.token});
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.clear();

    options.headers.addAll({
      "content-type": "application/json",
      if (AppMapKeys.accessToken != null && AppMapKeys.accessToken!.trim().isNotEmpty)
        "Authorization": "Bearer ${AppMapKeys.accessToken}",
    });

    super.onRequest(options, handler);
  }

}
