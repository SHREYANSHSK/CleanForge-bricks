import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:{{package_name}}/features/home/presentation/controllers/home_controller.dart';
import 'package:{{package_name}}/features/home/presentation/widgets/home_widget.dart';
import 'package:{{package_name}}/common/widgets/theme_switch_icon.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        leading: const ThemeSwitchIcon(),
      ),
      body: Obx(() {
        if (controller.state.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        return HomeWidget();
      }),
    );
  }
}
