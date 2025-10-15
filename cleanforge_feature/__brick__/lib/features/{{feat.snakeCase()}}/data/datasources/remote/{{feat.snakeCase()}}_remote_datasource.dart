import 'package:dio/dio.dart';
import 'package:{{project_name}}/common/resources/network_resources/rest_client/rest_client.dart';
import 'package:{{project_name}}/common/core/utils/errors/exceptions.dart';
import 'package:{{project_name}}/common/core/utils/logger/app_logger.dart';
import 'package:{{project_name}}/common/resources/network_resources/api_endpoints.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/data/models/{{feat.snakeCase()}}_model.dart';




abstract class {{feat.pascalCase()}}RemoteDataSource {

  Future<{{feat.pascalCase()}}Model> fetch{{feat.pascalCase()}}Data({
    required String id
  });

}

class {{feat.pascalCase()}}RemoteDataSourceImpl extends {{feat.pascalCase()}}RemoteDataSource{
  final RestClient _restClient;

  {{feat.pascalCase()}}RemoteDataSourceImpl(this._restClient);

  @override
  Future<{{feat.pascalCase()}}Model> fetch{{feat.pascalCase()}}Data({required String id}) async {
    try {
      final response = await _restClient.get(APIEndpoints.{{feat.snakeCase()}}DataEndPoint);
      return {{feat.pascalCase()}}Model.fromJson(response);
    } on DioException catch (dioError, stackTrace) {
      Log.warning(
      "DioException while fetching {{feat.snakeCase()}} data",
      dioError,
      stackTrace,
      );

      final statusCode = dioError.response?.statusCode ?? -1;
      final message = dioError.response?.data is Map
      ? dioError.response?.data["message"]?.toString() ?? dioError.message
          : dioError.message ?? "Unknown error";

      throw APIException(message: message!, statusCode: statusCode);
    } catch (e, stackTrace) {
      Log.warning(
        "Unexpected error while fetching {{feat.snakeCase()}} data",
        e,
        stackTrace,
      );

      throw APIException(
      message: e.toString(),
      statusCode: -1,
      );
    }
  }
}