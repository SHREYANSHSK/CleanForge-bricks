import 'package:get/get.dart';
import 'package:{{project_name}}/features/{{feature_name.snakeCase()}}/data/datasources/{{feature_name.snakeCase()}}_datasource.dart';
import 'package:{{project_name}}/features/{{feature_name.snakeCase()}}/data/repositories/{{feature_name.snakeCase()}}_repository_impl.dart';
import 'package:{{project_name}}/features/{{feature_name.snakeCase()}}/domain/usecases/{{feature_name.snakeCase()}}_usecase.dart';
import 'package:{{project_name}}/features/{{feature_name.snakeCase()}}/presentation/controllers/{{feature_name.snakeCase()}}_controller.dart';
import 'package:{{project_name}}/features/{{feature_name.snakeCase()}}/presentation/states/{{feature_name.snakeCase()}}_state.dart';


class {{feature_name.pascalCase()}}Binding extends Bindings {
@override
void dependencies() {
Get.lazyPut(() => {{feature_name.pascalCase()}}DataSource(Get.find()))
Get.lazyPut(() => {{feature_name.pascalCase()}}RepositoryImpl(Get.find()));
Get.lazyPut(() => {{feature_name.pascalCase()}}UseCase(Get.find()));
Get.lazyPut(() => {{feature_name.pascalCase()}}State());
Get.lazyPut(() => {{feature_name.pascalCase()}}Controller({{feature_name.snakeCase()}}UseCase: Get.find<{{feature_name.pascalCase()}}UseCase>(),state: Get.find<{{feature_name.pascalCase()}}State>()));

}
}