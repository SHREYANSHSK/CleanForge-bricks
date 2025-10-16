import 'package:get/get.dart';
import 'package:{{package_name}}/features/{{feat.snakeCase()}}/domain/entities/{{feat.snakeCase()}}_entity.dart';


class {{feat.pascalCase()}}State extends GetXState {
  RxBool isLoading = false.obs;
  final {{feat.camelCase()}}Data = Rxn<{{feat.pascalCase()}}Entity>();



}
