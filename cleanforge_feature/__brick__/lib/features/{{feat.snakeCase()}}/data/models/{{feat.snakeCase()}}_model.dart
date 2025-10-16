import 'package:{{package_name}}/features/{{feat.snakeCase()}}/domain/entities/{{feat.snakeCase()}}_entity.dart';


/// This is an example model class extending example model entity
class {{feat.pascalCase()}}Model extends {{feat.pascalCase()}}Entity{
  {{feat.pascalCase()}}Model({
    required super.id,
    required super. name,
  });

  factory {{feat.pascalCase()}}Model.fromJson(Map<String, dynamic> json) {
    return {{feat.pascalCase()}}Model(
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

  {{feat.pascalCase()}}Entity toEntity() {
    return {{feat.pascalCase()}}Entity(
      id: id,
      name: name,
    );
  }

  factory {{feat.pascalCase()}}Model.fromEntity({{feat.pascalCase()}}Entity entity) {
    return {{feat.pascalCase()}}Model(
      id: entity.id,
      name: entity.name,
    );
  }
}