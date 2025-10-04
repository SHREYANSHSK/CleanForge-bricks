import 'package:dartz/dartz.dart';
import 'package:{{project_name}}/features/home/domain/entities/home_entity.dart';

abstract class HomeRepository {
  Future<Either<Exception, HomeEntity>> getHome();
}