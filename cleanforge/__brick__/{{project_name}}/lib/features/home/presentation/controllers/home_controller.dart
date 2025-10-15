import 'package:get/get.dart';
import 'package:{{project_name}}/features/home/domain/usecases/home_usecase.dart';
import 'package:{{project_name}}/features/home/presentation/states/home_state.dart';
import 'package:{{project_name}}/common/core/utils/logger/app_logger.dart';
import 'package:toastification/toastification.dart';
import 'package:{{project_name}}/common/widgets/toastMessage.dart';

class HomeController extends GetxController {
  final HomeState state;
  final GetHomeUseCase getHomeUseCase;

  HomeController({required this.getHomeUseCase, required this.state});

  @override
  void onInit() {
    super.onInit();
    fetchHomeData();
  }

  Future<void> fetchHomeData() async {
    final result = await getHomeUseCase(GetHomeDataUseCaseParams(id: "1"));
    result.fold(
      (failure) {
        Log.error(failure, ["error while fetching Home Data"]);
        showToastNotification(
          title: 'Could not fetch details',
          body: 'Please try again later',
          messageType: ToastificationType.error,
        );

        state.isLoading.toggle();
      },
      (data) => state.homeData.value = data,
    );
  }
}
