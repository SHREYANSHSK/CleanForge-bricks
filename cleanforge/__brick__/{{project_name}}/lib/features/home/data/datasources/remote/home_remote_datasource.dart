import 'package:dio/dio.dart';
import 'package:{{project_name}}/common/resources/network_resources/rest_client/rest_client.dart';
import 'package:{{project_name}}/common/core/utils/logger/app_logger.dart';
import 'package:{{project_name}}/common/resources/network_resources/api_endpoints.dart';
import 'package:{{project_name}}/common/core/utils/errors/exceptions.dart';
import 'package:{{project_name}}/features/home/data/models/home_model.dart';
import 'package:{{project_name}}/features/home/domain/entities/home_request_entity.dart';
import 'package:{{project_name}}/features/home/data/models/home_request_model.dart';


abstract class HomeRemoteDataSource {

  Future<HomeModel> fetchHomeData(HomeRequestEntity request);

}


class HomeRemoteDataSourceImpl implements HomeRemoteDataSource{
  final RestClient _restClient;

  HomeRemoteDataSourceImpl(this._restClient);

  @override
  Future<HomeModel> fetchHomeData(HomeRequestEntity request) async {
    try {
      final requestModel = HomeRequestModel.fromEntity(request);
      final response = await _restClient.get(APIEndpoints.homeDataByIdEndPoint(requestModel.id));
      return HomeModel.fromJson(response);
    } on DioException catch (dioError, stackTrace) {
      Log.warning(
        "DioException while fetching home data",
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
        "Unexpected error while fetching home data",
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