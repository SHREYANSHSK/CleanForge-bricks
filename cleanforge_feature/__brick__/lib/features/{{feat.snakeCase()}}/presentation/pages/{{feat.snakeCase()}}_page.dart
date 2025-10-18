import 'package:flutter/material.dart';
import 'package:get/Get.dart';
import 'package:{{package_name}}/features/{{feat.snakeCase()}}/presentation/controllers/{{feat.snakeCase()}}_controller.dart';
import 'package:{{package_name}}/features/{{feat.snakeCase()}}/presentation/widgets/{{feat.snakeCase()}}_widget.dart';
import 'package:{{package_name}}/common/widgets/theme_switch_icon.dart';

class {{feat.pascalCase()}}Page extends GetView<{{feat.pascalCase()}}Controller> {
  const {{feat.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('{{feat.pascalCase()}} Page'),leading: const ThemeSwitchIcon()),
      body: Obx(() {
        if (controller.state.isLoading.value) {
        return const Center(child: CircularProgressIndicator());
        }
        return const {{feat.pascalCase()}}Widget();
      }),
    );
  }
}