import 'package:get/get.dart';
import 'package:{{project_name}}/features/{{feature_name.snakeCase()}}/domain/entities/{{feature_name.snakeCase()}}_entity.dart';
import 'package:{{project_name}}/features/{{feature_name.snakeCase()}}/domain/usecases/{{feature_name.snakeCase()}}_usecase.dart';
import 'package:{{project_name}}/common/utils/utils.dart';

class {{feature_name.pascalCase()}}Controller extends GetxController {
final {{feature_name.pascalCase()}}UseCase useCase;

{{feature_name.pascalCase()}}Controller(this.useCase);

final {{feature_name.camelCase()}} = Rxn<{{feature_name.pascalCase()}}Entity>();

@override
void onInit() {
super.onInit();
fetch{{feature_name.pascalCase()}}();
}

Future<void> fetch{{feature_name.pascalCase()}}() async {
final result = await useCase();
result.fold(
(failure) => logInfo('Error: $failure'),
(data) => {{feature_name.camelCase()}}.value = data,
);
}
}