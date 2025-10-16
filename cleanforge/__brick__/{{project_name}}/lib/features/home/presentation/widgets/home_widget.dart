import 'package:flutter/material.dart';
import 'package:{{project_name}}/common/resources/app_resources/app_strings.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(AppStrings.homeText);
  }
}