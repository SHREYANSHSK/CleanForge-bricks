import 'package:flutter/material.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_strings.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_text_styles.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(),
        body: Text(AppStrings.pageNotFound,style: AppTextStyles.interExtraExtraLargeExtraBold,),

    );

  }
}
