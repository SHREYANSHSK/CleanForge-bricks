import 'package:get/get.dart';
import 'package:{{project_name}}/features/home/domain/entities/home_entity.dart';


class HomeState extends GetXState {
  RxBool isLoading = false.obs;
  final homeData = Rxn<HomeEntity>();


}
