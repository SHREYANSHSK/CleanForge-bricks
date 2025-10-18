import 'package:flutter/material.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_strings.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child:Text(AppStrings.homeText,style: Theme.of(context).textTheme.displayLarge,));
  }
}