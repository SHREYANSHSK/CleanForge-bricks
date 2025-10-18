import 'package:flutter/material.dart';

class {{feat.pascalCase()}}Widget extends StatelessWidget {
  const {{feat.pascalCase()}}Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child:Text('{{feat.pascalCase()}} Widget',style: Theme.of(context).textTheme.displayLarge,));
  }
}