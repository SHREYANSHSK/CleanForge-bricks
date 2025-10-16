import 'package:{{package_name}}/features/{{feat.snakeCase()}}/domain/repositories/{{feat.snakeCase()}}_repository.dart';
import 'package:{{package_name}}/features/{{feat.snakeCase()}}/domain/entities/{{feat.snakeCase()}}_entity.dart';
import 'package:{{package_name}}/common/core/utils/use_cases/user_cases.dart';
import 'package:{{package_name}}/common/core/utils/type_def/type_def.dart';
import 'package:{{package_name}}/features/{{feat.snakeCase()}}/domain/entities/{{feat.snakeCase()}}_request_entity.dart';




///NOTE: class can be implemented with UseCaseWithoutParams as well if no parameters needs to be pass
///NOTE: If more use-cases needs to be added then make separate usecase file
class Get{{feat.pascalCase()}}UseCase  implements UseCaseWithParams<{{feat.pascalCase()}}Entity, Get{{feat.pascalCase()}}DataUseCaseParams> {
  final {{feat.pascalCase()}}Repository repository;
  Get{{feat.pascalCase()}}UseCase(this.repository);
  @override
  ResultFuture<{{feat.pascalCase()}}Entity> call(Get{{feat.pascalCase()}}DataUseCaseParams params) async {
    return await repository.get{{feat.pascalCase()}}Data(
    request: params.request
    );
  }
}

class Get{{feat.pascalCase()}}DataUseCaseParams {
  final {{feat.pascalCase()}}RequestEntity request;
  Get{{feat.pascalCase()}}DataUseCaseParams({
    required this.request
  });
}