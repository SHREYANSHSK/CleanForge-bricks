import 'package:get/get.dart';
import 'package:{{project_name}}/features/{{feature_name.snakeCase()}}/domain/usecases/{{feature_name.snakeCase()}}_usecase.dart';
import 'package:{{project_name}}/features/{{feature_name.snakeCase()}}/presentation/states/{{feature_name.snakeCase()}}_state.dart';
import 'package:{{project_name}}/common/core/utils/logger/app_logger.dart';
import 'package:toastification/toastification.dart';
import 'package:{{project_name}}/common/widgets/toastMessage.dart';



class {{feature_name.pascalCase()}}Controller extends GetxController {
final {{feature_name.pascalCase()}}State state;
final {{feature_name.pascalCase()}}UseCase {{feature_name.snakeCase()}}UseCase;

{{feature_name.pascalCase()}}Controller({required this.{{feature_name.snakeCase()}}useCase, required this.state});


@override
void onInit() {
super.onInit();
fetch{{feature_name.pascalCase()}}();
}

Future<void> fetch{{feature_name.pascalCase()}}Data() async {
state.isLoading.toggle();
final result = await {{feature_name.snakeCase()}}UseCase();

result.fold(
(failure) {
Log.error(failure,["error while fetching {{feature_name.pascalCase()}}Data"]);
showToastNotification(
title: 'Could not fetch details',
message: 'Please try again later',
messageType: ToastificationType.error,
);

state.isLoading.toggle();
},
(data) => state.{{feature_name.camelCase()}}Data.value = data,
);

}
}