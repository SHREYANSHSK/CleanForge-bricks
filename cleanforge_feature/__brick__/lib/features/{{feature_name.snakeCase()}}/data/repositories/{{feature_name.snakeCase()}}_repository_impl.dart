import 'package:dartz/dartz.dart';
import 'package:{{project_name}}/features/{{feature_name.snakeCase()}}/data/datasources/{{feature_name.snakeCase()}}_datasource.dart';
import 'package:{{project_name}}/features/{{feature_name.snakeCase()}}/data/models/{{feature_name.snakeCase()}}_model.dart';
import 'package:{{project_name}}/features/{{feature_name.snakeCase()}}/domain/entities/{{feature_name.snakeCase()}}_entity.dart';
import 'package:{{project_name}}/features/{{feature_name.snakeCase()}}/domain/repositories/{{feature_name.snakeCase()}}_repository.dart';

class {{feature_name.pascalCase()}}RepositoryImpl implements {{feature_name.pascalCase()}}Repository {
final {{feature_name.pascalCase()}}DataSource dataSource;

{{feature_name.pascalCase()}}RepositoryImpl(this.dataSource);

@override
Future<Either<Exception, {{feature_name.pascalCase()}}Entity>> get{{feature_name.pascalCase()}}() async {
try {
final data = await dataSource.fetch{{feature_name.pascalCase()}}();
final model = {{feature_name.pascalCase()}}Model.fromJson(data);
return Right({{feature_name.pascalCase()}}Entity(id: model.id, name: model.name));
} catch (e) {
return Left(Exception(e.toString()));
}
}
}