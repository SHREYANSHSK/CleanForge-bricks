import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:{{project_name}}/app/di/app_binding.dart';
import 'package:{{project_name}}/routes/app_pages.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '{{project_name}}',
      initialBinding: AppBinding(),
      initialRoute: AppPages.initial,
      getPages: AppPages.pages,
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}