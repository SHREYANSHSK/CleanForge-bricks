import 'package:get/get.dart';
import 'package:{{project_name}}/features/home/data/datasources/home_datasource.dart';
import 'package:{{project_name}}/features/home/data/repositories/home_repository_impl.dart';
import 'package:{{project_name}}/features/home/domain/usecases/home_usecase.dart';
import 'package:{{project_name}}/features/home/presentation/controllers/home_controller.dart';
import 'package:{{project_name}}/features/home/presentation/states/home_state.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeDataSource(Get.find()));
    Get.lazyPut(() => HomeRepositoryImpl(Get.find()));
    Get.lazyPut(() => HomeUseCase(Get.find()));
    Get.lazyPut(() => HomeState());
    Get.lazyPut(() => HomeController(homeUseCase: Get.find<HomeUseCase>(),state: Get.find<HomeState>()));
  }
}