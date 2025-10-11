import 'package:get/get.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/domain/usecases/{{feat.snakeCase()}}_usecase.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/presentation/states/{{feat.snakeCase()}}_state.dart';
import 'package:{{project_name}}/common/core/utils/logger/app_logger.dart';
import 'package:toastification/toastification.dart';
import 'package:{{project_name}}/common/widgets/toastMessage.dart';



class {{feat.pascalCase()}}Controller extends GetxController {
  final {{feat.pascalCase()}}State state;
  final {{feat.pascalCase()}}UseCase {{feat.snakeCase()}}UseCase;

  {{feat.pascalCase()}}Controller({required this.{{feat.snakeCase()}}UseCase, required this.state});


  @override
  void onInit() {
    super.onInit();
    fetch{{feat.pascalCase()}}Data();
  }

  Future<void> fetch{{feat.pascalCase()}}Data() async {
      state.isLoading.toggle();
      final result = await {{feat.snakeCase()}}UseCase();

      result.fold(
        (failure) {
          Log.error(failure,["error while fetching {{feat.pascalCase()}}Data"]);
          showToastNotification(
            title: 'Could not fetch details',
            body: 'Please try again later',
            messageType: ToastificationType.error,
          );

          state.isLoading.toggle();
        },
        (data) => state.{{feat.camelCase()}}Data.value = data,
      );
    }
}


