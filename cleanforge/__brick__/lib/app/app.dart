import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:{{project_name}}/app/app_binding.dart';
import 'package:{{project_name}}/routes/app_pages.dart';
import 'package:{{project_name}}/common/core/utils/navigator_observer/app_navigator_observer.dart';
import 'package:{{project_name}}/app/pageNotFound.dart';
import 'package:{{project_name}}/common/resources/app_resources/app_sizes.dart';
import 'package:toastification/toastification.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: ScreenUtilInit(
        designSize: AppSizes.designSize,
        useInheritedMediaQuery: true,
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            title: '{{project_name}}',
            initialBinding: AppBinding(),
            initialRoute: AppPages.initial,
            getPages: AppPages.pages,
            unknownRoute: GetPage(
              name: AppRoutes.pageNotFound,
              page: () => const PageNotFound(),
            ),
            navigatorObservers: [AppNavigatorObserver()],
            useInheritedMediaQuery: true,
            initialRoute: AppPages.INITIAL,
            theme: ThemeData(primarySwatch: Colors.blue),
          );
        },
      ),
    );





  }
}