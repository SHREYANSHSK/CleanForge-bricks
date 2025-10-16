import 'package:{{package_name}}/features/{{feat.snakeCase()}}/domain/entities/{{feat.snakeCase()}}_request_entity.dart';

class {{feat.pascalCase()}}RequestModel extends {{feat.pascalCase()}}RequestEntity {
  {{feat.pascalCase()}}RequestModel({
    required super.id,
  });

  factory {{feat.pascalCase()}}RequestModel.fromEntity({{feat.pascalCase()}}RequestEntity entity) {
    return {{feat.pascalCase()}}RequestModel(
      id: entity.id,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
    };
  }

  {{feat.pascalCase()}}RequestEntity toEntity() {
    return {{feat.pascalCase()}}RequestEntity(
      id: id,
    );
  }
}
