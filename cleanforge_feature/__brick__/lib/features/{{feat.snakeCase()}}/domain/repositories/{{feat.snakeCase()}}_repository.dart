import 'package:{{project_name}}/features/{{feat.snakeCase()}}/domain/entities/{{feat.snakeCase()}}_entity.dart';
import 'package:{{project_name}}/common/core/utils/type_def/type_def.dart';
import 'package:{{project_name}}/features/{{feat.snakeCase()}}/domain/entities/{{feat.snakeCase()}}_request_entity.dart';


abstract class {{feat.pascalCase()}}Repository {
  ResultFuture<{{feat.pascalCase()}}Entity> get{{feat.pascalCase()}}Data({required {{feat.pascalCase()}}RequestEntity request});
}