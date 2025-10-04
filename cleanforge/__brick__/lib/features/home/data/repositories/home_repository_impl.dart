import 'package:dartz/dartz.dart';
import 'package:{{project_name}}/features/home/data/datasources/home_datasource.dart';
import 'package:{{project_name}}/features/home/data/models/home_model.dart';
import 'package:{{project_name}}/features/home/domain/entities/home_entity.dart';
import 'package:{{project_name}}/features/home/domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeDataSource dataSource;

  HomeRepositoryImpl(this.dataSource);

  @override
  Future<Either<Exception, HomeEntity>> getHome() async {
    try {
      final data = await dataSource.fetchHome();
      final model = HomeModel.fromJson(data);
      return Right(HomeEntity(id: model.id, name: model.name));
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }
}