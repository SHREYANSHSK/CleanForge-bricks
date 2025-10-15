import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:{{project_name}}/features/home/presentation/controllers/home_controller.dart';
import 'package:{{project_name}}/features/home/presentation/widgets/home_widget.dart';


class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Obx(() {
        if (controller.state.homeData.value == null) {
          return const Center(child: CircularProgressIndicator());
        }
        return HomeWidget();
      }),
    );
  }
}