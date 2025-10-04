import 'package:dio/dio.dart';
import 'package:{{project_name}}/common/constants/constants.dart';

class {{feature_name.pascalCase()}}DataSource {
final Dio _dio;

{{feature_name.pascalCase()}}DataSource(this._dio);

Future<Map<String, dynamic>> fetch{{feature_name.pascalCase()}}() async {
final response = await _dio.get('${Constants.apiBaseUrl}/{{feature_name.snakeCase()}}');
return response.data;
}
}