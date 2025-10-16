import 'package:{{package_name}}/features/home/domain/repositories/home_repository.dart';
import 'package:{{package_name}}/features/home/domain/entities/home_entity.dart';
import 'package:{{package_name}}/common/core/utils/use_cases/user_cases.dart';
import 'package:{{package_name}}/common/core/utils/type_def/type_def.dart';
import 'package:{{package_name}}/features/home/domain/entities/home_request_entity.dart';


///NOTE: Class can be implemented with UseCaseWithoutParams as well if no parameters needs to be pass
///NOTE: If more use-cases needs to be added then make separate usecase file
class GetHomeUseCase  implements UseCaseWithParams<HomeEntity, GetHomeDataUseCaseParams> {
  final HomeRepository repository;
  GetHomeUseCase(this.repository);
  @override
  ResultFuture<HomeEntity> call(GetHomeDataUseCaseParams params) async {
    return await repository.getHomeData(
    request: params.request
    );
  }
}

class GetHomeDataUseCaseParams {
  final HomeRequestEntity request;
  GetHomeDataUseCaseParams({
    required this.request
  });
}