import 'package:{{project_name}}/features/home/domain/repositories/home_repository.dart';
import 'package:{{project_name}}/features/home/domain/entities/home_entity.dart';
import 'package:{{project_name}}/common/core/utils/use_cases/user_cases.dart';
import 'package:{{project_name}}/common/core/utils/type_def/type_def.dart';


///NOTE: Class can be implemented with UseCaseWithoutParams as well if no parameters needs to be pass
///NOTE: If more use-cases needs to be added then make separate usecase file
class GetHomeUseCase  implements UseCaseWithParams<HomeEntity, GetHomeDataUseCaseParams> {
  final HomeRepository repository;
  GetHomeUseCase(this.repository);
  @override
  ResultFuture<HomeEntity> call(GetHomeDataUseCaseParams params) async {
    return await repository.getHomeData(
    id: params.id
    );
  }
}

class GetHomeDataUseCaseParams {
  final String id;
  GetHomeDataUseCaseParams({
    required this.id
  });
}