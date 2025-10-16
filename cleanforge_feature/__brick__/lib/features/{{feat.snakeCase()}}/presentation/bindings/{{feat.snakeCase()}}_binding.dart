import 'package:get/get.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/data/datasources/local/{{feat.snakeCase()}}_local_datasource.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/data/datasources/remote/{{feat.snakeCase()}}_remote_datasource.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/data/repositories/{{feat.snakeCase()}}_repository_impl.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/domain/repositories/{{feat.snakeCase()}}_repository.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/domain/usecases/{{feat.snakeCase()}}_usecase.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/presentation/controllers/{{feat.snakeCase()}}_controller.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/presentation/states/{{feat.snakeCase()}}_state.dart';





class {{feat.pascalCase()}}Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<{{feat.pascalCase()}}RemoteDataSource>(
      () => {{feat.pascalCase()}}RemoteDataSourceImpl(Get.find()),
    );
    Get.lazyPut<{{feat.pascalCase()}}LocalDataSource>(
      ()  => {{feat.pascalCase()}}LocalDataSourceImpl(),
    );
    Get.lazyPut<{{feat.pascalCase()}}Repository>(
      () => {{feat.pascalCase()}}RepositoryImpl(
      remoteDataSource: Get.find(),
      localDataSource: Get.find(),
      ),
    );
    Get.lazyPut<Get{{feat.pascalCase()}}UseCase>(
      () => Get{{feat.pascalCase()}}UseCase(Get.find()),
    );
    Get.lazyPut<{{feat.pascalCase()}}State>(() => {{feat.pascalCase()}}State());
    Get.lazyPut<{{feat.pascalCase()}}Controller>(() => {{feat.pascalCase()}}Controller(get{{feat.pascalCase()}}UseCase: Get.find<Get{{feat.pascalCase()}}UseCase>(),state: Get.find<{{feat.pascalCase()}}State>()));

  }
}