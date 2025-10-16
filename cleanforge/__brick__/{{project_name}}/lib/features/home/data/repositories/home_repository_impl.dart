import 'package:dartz/dartz.dart';
import 'package:{{package_name}}/common/core/utils/logger/app_logger.dart';
import 'package:{{package_name}}/common/core/utils/type_def/type_def.dart';
import 'package:{{package_name}}/features/home/data/datasources/remote/home_remote_datasource.dart';
import 'package:{{package_name}}/features/home/data/datasources/local/home_local_datasource.dart';
import 'package:{{package_name}}/features/home/data/models/home_model.dart';
import 'package:{{package_name}}/features/home/domain/entities/home_entity.dart';
import 'package:{{package_name}}/features/home/domain/repositories/home_repository.dart';
import 'package:{{package_name}}/common/core/utils/errors/exceptions.dart';
import 'package:{{package_name}}/features/home/domain/entities/home_request_entity.dart';



class HomeRepositoryImpl extends HomeRepository {
  final HomeRemoteDataSource remoteDataSource;
  final HomeLocalDataSource localDataSource;

  HomeRepositoryImpl({required this.remoteDataSource,required this.localDataSource});

  @override
  ResultFuture<HomeEntity> getHomeData({required HomeRequestEntity request}) async {
    try {
      final HomeModel model = await remoteDataSource.fetchHomeData(request);

      // Optionally cache something locally if needed
      localDataSource.setAccessToken(model.id);

      return Right(model.toEntity()); // convert to domain entity
    } on APIException catch (e) {
      Log.error("API Exception: ${e.message}");
      return Left(APIException(message: e.message, statusCode: e.statusCode));
    } on StorageException catch (e) {
      Log.error("Storage Exception: ${e.message}");
      return Left(StorageException(message: e.message));
    } catch (e, stackTrace) {
      Log.error("Unexpected error in HomeRepositoryImpl", e, stackTrace);
      return Left(APIException(message: e.toString(), statusCode: -1));
    }
  }
}
