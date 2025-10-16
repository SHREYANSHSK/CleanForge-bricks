import 'package:{{package_name}}/features/home/domain/entities/home_request_entity.dart';

class HomeRequestModel extends HomeRequestEntity {
  HomeRequestModel({
    required super.id,
  });

  factory HomeRequestModel.fromEntity(HomeRequestEntity entity) {
    return HomeRequestModel(
      id: entity.id,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
    };
  }

  HomeRequestEntity toEntity() {
    return HomeRequestEntity(
      id: id,
    );
  }
}
