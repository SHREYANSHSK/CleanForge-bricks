import 'package:get/get.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/domain/usecases/{{feat.snakeCase()}}_usecase.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/presentation/states/{{feat.snakeCase()}}_state.dart';
import 'package:{{project_name}}/common/core/utils/logger/app_logger.dart';
import 'package:toastification/toastification.dart';
import 'package:{{project_name}}/common/widgets/toastMessage.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/domain/entities/{{feat.snakeCase()}}_request_entity.dart';



class {{feat.pascalCase()}}Controller extends GetxController {
  final {{feat.pascalCase()}}State state;
  final Get{{feat.pascalCase()}}UseCase get{{feat.pascalCase()}}UseCase;

  {{feat.pascalCase()}}Controller({required this.get{{feat.pascalCase()}}UseCase, required this.state});


  @override
  void onInit() {
    super.onInit();
    fetch{{feat.pascalCase()}}Data();
  }

  Future<void> fetch{{feat.pascalCase()}}Data() async {
      try {
        state.isLoading.toggle();

        final request = {{feat.pascalCase()}}RequestEntity(
        id: "1",
        );

        final result = await get{{feat.pascalCase()}}UseCase(
          Get{{feat.pascalCase()}}DataUseCaseParams(
          request:request
          )
        );

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
      } catch (e, stackTrace) {
        Log.error("Unexpected error during fetching of {{feat.snakeCase()}} data", e, stackTrace);
        showToastNotification(
          title: 'Failed Fetching {{feat.pascalCase()}}Data',
          body: 'An unexpected error occurred. Please try again.',
          messageType: ToastificationType.error,
        );
        state.isLoading.value = false;
        }
    }
}


