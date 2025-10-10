import 'package:get/get.dart';
import 'package:{{project_name}}/features/home/domain/entities/home_entity.dart';


class HomeState extends GetXState {
  RxBool isLoading = false.obs;
  final {{feature_name.camelCase()}}Data = Rxn<{{feature_name.pascalCase()}}Entity>();



}
