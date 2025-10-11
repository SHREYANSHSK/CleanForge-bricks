import 'package:dartz/dartz.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/domain/entities/{{feat.snakeCase()}}_entity.dart';

abstract class {{feat.pascalCase()}}Repository {
Future<Either<Exception, {{feat.pascalCase()}}Entity>> get{{feat.pascalCase()}}();
}