import 'package:dartz/dartz.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/data/datasources/{{feat.snakeCase()}}_datasource.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/data/models/{{feat.snakeCase()}}_model.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/domain/entities/{{feat.snakeCase()}}_entity.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/domain/repositories/{{feat.snakeCase()}}_repository.dart';

class {{feat.pascalCase()}}RepositoryImpl implements {{feat.pascalCase()}}Repository {
final {{feat.pascalCase()}}DataSource dataSource;

{{feat.pascalCase()}}RepositoryImpl(this.dataSource);

@override
Future<Either<Exception, {{feat.pascalCase()}}Entity>> get{{feat.pascalCase()}}() async {
try {
final data = await dataSource.fetch{{feat.pascalCase()}}();
final model = {{feat.pascalCase()}}Model.fromJson(data);
return Right({{feat.pascalCase()}}Entity(id: model.id, name: model.name));
} catch (e) {
return Left(Exception(e.toString()));
}
}
}