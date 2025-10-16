import 'package:get/get.dart';
import 'package:{{package_name}}/features/home/domain/usecases/home_usecase.dart';
import 'package:{{package_name}}/features/home/presentation/states/home_state.dart';
import 'package:{{package_name}}/common/core/utils/logger/app_logger.dart';
import 'package:toastification/toastification.dart';
import 'package:{{package_name}}/common/widgets/toast_message.dart';
import 'package:{{package_name}}/features/home/domain/entities/home_request_entity.dart';


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
    state.isLoading.toggle();

    try {
      final request = HomeRequestEntity(
        id: "1",
      );
      final result = await getHomeUseCase(GetHomeDataUseCaseParams(request: request));
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
    } catch (e, stackTrace) {
      Log.error("Unexpected error during fetching of home data", e, stackTrace);
      showToastNotification(
        title: 'Failed Fetching HomeData',
        body: 'An unexpected error occurred. Please try again.',
        messageType: ToastificationType.error,
      );
      state.isLoading.value = false;
    }
  }
}
