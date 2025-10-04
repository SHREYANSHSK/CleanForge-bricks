import 'package:dartz/dartz.dart';
import 'package:{{project_name}}/features/{{feature_name.snakeCase()}}/domain/entities/{{feature_name.snakeCase()}}_entity.dart';

abstract class {{feature_name.pascalCase()}}Repository {
Future<Either<Exception, {{feature_name.pascalCase()}}Entity>> get{{feature_name.pascalCase()}}();
}