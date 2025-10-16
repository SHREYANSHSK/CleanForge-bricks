import 'package:get/get.dart';
import 'package:{{project_name}}/features/home/data/datasources/local/home_local_datasource.dart';
import 'package:{{project_name}}/features/home/data/datasources/remote/home_remote_datasource.dart';
import 'package:{{project_name}}/features/home/data/repositories/home_repository_impl.dart';
import 'package:{{project_name}}/features/home/domain/repositories/home_repository.dart';
import 'package:{{project_name}}/features/home/domain/usecases/home_usecase.dart';
import 'package:{{project_name}}/features/home/presentation/controllers/home_controller.dart';
import 'package:{{project_name}}/features/home/presentation/states/home_state.dart';


class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeRemoteDataSource>(
          () => HomeRemoteDataSourceImpl(Get.find()),
    );
    Get.lazyPut<HomeLocalDataSource>(
          ()  => HomeLocalDataSourceImpl(),
    );
    Get.lazyPut<HomeRepository>(
          () => HomeRepositoryImpl(
            remoteDataSource: Get.find(),
            localDataSource: Get.find(),
          ),
    );
    Get.lazyPut<GetHomeUseCase>(
          () => GetHomeUseCase(Get.find()),
    );
    Get.lazyPut<HomeState>(() => HomeState());
    Get.lazyPut(() => HomeController(getHomeUseCase: Get.find<GetHomeUseCase>(),state: Get.find<HomeState>()));
  }
}