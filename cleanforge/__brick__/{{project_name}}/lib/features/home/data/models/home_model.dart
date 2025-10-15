import 'package:{{project_name}}/features/home/domain/entities/home_entity.dart';

/// This is an example model class extending example model entity
class HomeModel extends HomeEntity {
  HomeModel({
    required super.id,
    required super.name,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
    'id': id,
    'name': name,
    };
  }

  HomeEntity toEntity() {
    return HomeEntity(
      id: id,
      name: name,
    );
  }

  factory HomeModel.fromEntity(HomeEntity entity) {
    return HomeModel(
      id: entity.id,
      name: entity.name,
    );
  }
}