import 'package:dartz/dartz.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/domain/entities/{{feat.snakeCase()}}_entity.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/domain/repositories/{{feat.snakeCase()}}_repository.dart';

class {{feat.pascalCase()}}UseCase {
final {{feat.pascalCase()}}Repository repository;

{{feat.pascalCase()}}UseCase(this.repository);

Future<Either<Exception, {{feat.pascalCase()}}Entity>> call() {
return repository.get{{feat.pascalCase()}}();
}
}