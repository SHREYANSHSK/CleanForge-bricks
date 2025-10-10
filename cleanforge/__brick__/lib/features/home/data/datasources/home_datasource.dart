import 'package:dio/dio.dart';
import 'package:{{project_name}}/common/constants/constants.dart';

class HomeDataSource {
  final Dio _dio;

  HomeDataSource(this._dio);

  Future<Map<String, dynamic>> fetchHome() async {
    final response = await _dio.get('${Constants.apiBaseUrl}/example');
    return response.data;
  }
}