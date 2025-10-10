import 'package:get/get.dart';
import 'package:{{project_name}}/features/home/domain/usecases/home_usecase.dart';
import 'package:{{project_name}}/features/home/presentation/states/home_state.dart';
import 'package:{{project_name}}/common/core/utils/logger/app_logger.dart'
import 'package:toastification/toastification.dart';
import 'package:{{project_name}}/common/widgets/toastMessage.dart';




class HomeController extends GetxController {
  final HomeState state;
  final HomeUseCase homeUseCase;

  HomeController({required this.homeUseCase,required this.state});


  @override
  void onInit() {
    super.onInit();
    fetchHome();
  }

  Future<void> fetchHome() async {
    final result = await homeUseCase();
    result.fold(
          (failure) {
        Log.error(failure,["error while fetching Home Data"]);
        showToastNotification(
          title: 'Could not fetch details',
          message: 'Please try again later',
          messageType: ToastificationType.error,
        );

        state.isLoading.toggle();
      },
          (data) => state.homeData.value = data,
    );
  }
}