import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:{{project_name}}/common/data/data_sources/commonDataSources.dart';
import 'package:{{project_name}}/common/network_resources/network_info/network_info.dart';
import 'package:{{project_name}}/common/network_resources/rest_client/clients/dio_client/dio_client.dart';
import 'package:{{project_name}}/features/home/presentation/controllers/home_controller.dart';
import 'package:{{project_name}}/features/home/presentation/states/home_state.dart';
import 'package:{{project_name}}/common/resources/app_resources/app_map_keys.dart';
import 'package:{{project_name}}/common/resources/storage_resources/localKeys.dart';
import 'package:{{project_name}}/common/resources/storage_resources/local_client.dart';
class AppBinding extends Bindings {
  @override
  Future<void> dependencies() async {
    Get.lazyPut<HomeController>(
          () => HomeController(
        state: HomeState(),
        commonPageService: CommonPageService(
          restClient: DioClient(networkInfo: NetworkInfo(connectivity: Connectivity())),
        ),
      ),
    );
    AppMapKeys.accessToken = await LocalClient.getString(
      key: LocalKeys.accessToken,
    );
  }
}
