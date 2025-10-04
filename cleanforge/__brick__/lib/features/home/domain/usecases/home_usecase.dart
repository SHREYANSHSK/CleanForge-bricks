import 'package:dartz/dartz.dart';
import 'package:{{project_name}}/features/home/domain/entities/home_entity.dart';
import 'package:{{project_name}}/features/home/domain/repositories/home_repository.dart';

class HomeUseCase {
  final HomeRepository repository;

  HomeUseCase(this.repository);

  Future<Either<Exception, HomeEntity>> call() {
    return repository.getHome();
  }
}