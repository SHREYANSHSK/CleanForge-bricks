class {{feat.pascalCase()}}Model {
final String id;
final String name;

{{feat.pascalCase()}}Model({required this.id, required this.name});

factory {{feat.pascalCase()}}Model.fromJson(Map<String, dynamic> json) {
return {{feat.pascalCase()}}Model(id: json['id'], name: json['name']);
}
}