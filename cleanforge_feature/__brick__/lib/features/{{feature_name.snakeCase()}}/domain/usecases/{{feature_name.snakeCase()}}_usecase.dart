import 'package:dartz/dartz.dart';
import 'package:{{project_name}}/features/{{feature_name.snakeCase()}}/domain/entities/{{feature_name.snakeCase()}}_entity.dart';
import 'package:{{project_name}}/features/{{feature_name.snakeCase()}}/domain/repositories/{{feature_name.snakeCase()}}_repository.dart';

class {{feature_name.pascalCase()}}UseCase {
final {{feature_name.pascalCase()}}Repository repository;

{{feature_name.pascalCase()}}UseCase(this.repository);

Future<Either<Exception, {{feature_name.pascalCase()}}Entity>> call() {
return repository.get{{feature_name.pascalCase()}}();
}
}