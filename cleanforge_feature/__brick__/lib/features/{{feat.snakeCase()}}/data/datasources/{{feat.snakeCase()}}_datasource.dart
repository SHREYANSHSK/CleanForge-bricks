import 'package:dio/dio.dart';
import 'package:{{project_name}}/common/constants/constants.dart';

class {{feat.pascalCase()}}DataSource {
final Dio _dio;

{{feat.pascalCase()}}DataSource(this._dio);

Future<Map<String, dynamic>> fetch{{feat.pascalCase()}}() async {
final response = await _dio.get('${Constants.apiBaseUrl}/{{feat.snakeCase()}}');
return response.data;
}
}