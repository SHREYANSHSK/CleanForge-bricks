import 'package:{{package_name}}/common/core/utils/type_def/type_def.dart';
import 'package:{{package_name}}/features/home/domain/entities/home_entity.dart';
import 'package:{{package_name}}/features/home/domain/entities/home_request_entity.dart';

abstract class HomeRepository {
  ResultFuture<HomeEntity> getHomeData({required HomeRequestEntity request});
}