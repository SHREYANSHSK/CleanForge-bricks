import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:{{project_name}}/features/home_feature/presentation/controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Obx(() {
        if (controller.home.value == null) {
          return const Center(child: CircularProgressIndicator());
        }
        return Center(
          child: Text('Name: ${controller.home.value!.name}'),
        );
      }),
    );
  }
}