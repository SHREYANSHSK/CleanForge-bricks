import 'package:get/get.dart';
import 'package:{{project_name}}/features/home/domain/entities/home_entity.dart';
import 'package:{{project_name}}/features/home/domain/usecases/home_usecase.dart';
import 'package:{{project_name}}/common/utils/utils.dart';

class HomeController extends GetxController {
  final HomeUseCase useCase;

  HomeController(this.useCase);

  final home = Rxn<HomeEntity>();

  @override
  void onInit() {
    super.onInit();
    fetchHome();
  }

  Future<void> fetchHome() async {
    final result = await useCase();
    result.fold(
          (failure) => logInfo('Error: $failure'),
          (data) => home.value = data,
    );
  }
}