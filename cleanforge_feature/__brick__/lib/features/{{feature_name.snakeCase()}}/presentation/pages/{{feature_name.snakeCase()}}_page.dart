import 'package:flutter/material.dart';
import 'package:get/Get.dart';
import 'package:{{project_name}}/features/{{feature_name.snakeCase()}}/presentation/controllers/{{feature_name.snakeCase()}}_controller.dart';

class {{feature_name.pascalCase()}}Page extends GetView<{{feature_name.pascalCase()}}Controller> {
const {{feature_name.pascalCase()}}Page({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: const Text('{{feature_name.pascalCase()}} Page')),
body: Obx(() {
if (controller.{{feature_name.camelCase()}}.value == null) {
return const Center(child: CircularProgressIndicator());
}
return Center(
child: Text('Name: ${controller.{{feature_name.camelCase()}}.value!.name}'),
);
}),
);
}
}