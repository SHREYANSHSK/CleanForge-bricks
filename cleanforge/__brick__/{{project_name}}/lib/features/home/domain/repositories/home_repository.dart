import 'package:dartz/dartz.dart';
import 'package:{{project_name}}/common/core/utils/type_def/type_def.dart';
import 'package:{{project_name}}/features/home/domain/entities/home_entity.dart';

abstract class HomeRepository {
  ResultFuture<HomeEntity> getHomeData({required String id});
}