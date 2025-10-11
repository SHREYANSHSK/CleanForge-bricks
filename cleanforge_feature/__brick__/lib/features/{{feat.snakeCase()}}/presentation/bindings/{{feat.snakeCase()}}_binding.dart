import 'package:get/get.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/data/datasources/{{feat.snakeCase()}}_datasource.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/data/repositories/{{feat.snakeCase()}}_repository_impl.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/domain/usecases/{{feat.snakeCase()}}_usecase.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/presentation/controllers/{{feat.snakeCase()}}_controller.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/presentation/states/{{feat.snakeCase()}}_state.dart';


class {{feat.pascalCase()}}Binding extends Bindings {
@override
void dependencies() {
Get.lazyPut(() => {{feat.pascalCase()}}DataSource(Get.find()));
Get.lazyPut(() => {{feat.pascalCase()}}RepositoryImpl(Get.find()));
Get.lazyPut(() => {{feat.pascalCase()}}UseCase(Get.find()));
Get.lazyPut(() => {{feat.pascalCase()}}State());
Get.lazyPut(() => {{feat.pascalCase()}}Controller({{feat.snakeCase()}}UseCase: Get.find<{{feat.pascalCase()}}UseCase>(),state: Get.find<{{feat.pascalCase()}}State>()));

}
}