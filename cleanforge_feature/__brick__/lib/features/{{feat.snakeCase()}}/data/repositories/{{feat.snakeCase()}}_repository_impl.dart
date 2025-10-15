import 'package:dartz/dartz.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/data/datasources/remote/{{feat.snakeCase()}}_remote_datasource.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/data/datasources/local/{{feat.snakeCase()}}_local_datasource.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/data/models/{{feat.snakeCase()}}_model.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/domain/entities/{{feat.snakeCase()}}_entity.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/domain/repositories/{{feat.snakeCase()}}_repository.dart';
import 'package:{{project_name}}/common/core/utils/logger/app_logger.dart';
import 'package:{{project_name}}/common/core/utils/type_def/type_def.dart';
import 'package:{{project_name}}/common/core/utils/errors/exceptions.dart';


class {{feat.pascalCase()}}RepositoryImpl extends {{feat.pascalCase()}}Repository {
  final {{feat.pascalCase()}}RemoteDataSource remoteDataSource;
  final {{feat.pascalCase()}}LocalDataSource localDataSource;

  {{feat.pascalCase()}}RepositoryImpl({required this.remoteDataSource,required this.localDataSource});

  @override
  ResultFuture<{{feat.pascalCase()}}Entity> get{{feat.pascalCase()}}Data({required String id}) async {
    try {
      final {{feat.pascalCase()}}Model model = await remoteDataSource.fetch{{feat.pascalCase()}}Data(id:id);

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
      Log.error("Unexpected error in {{feat.pascalCase()}}RepositoryImpl", e, stackTrace);
      return Left(APIException(message: e.toString(), statusCode: -1));
    }
  }
}