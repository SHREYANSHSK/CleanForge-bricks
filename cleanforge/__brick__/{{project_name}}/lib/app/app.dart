import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:{{package_name}}/common/core/theme/theme.dart';
import 'package:{{package_name}}/app/app_binding.dart';
import 'package:{{package_name}}/routes/app_pages.dart';
import 'package:{{package_name}}/common/core/utils/navigator_observer/app_navigator_observer.dart';
import 'package:{{package_name}}/app/page_not_found.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_sizes.dart';
import 'package:toastification/toastification.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:{{package_name}}/routes/app_routes.dart';




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
            title: '{{package_name}}',
            initialBinding: AppBinding(),
            initialRoute: AppPages.initial,
            getPages: AppPages.pages,
            unknownRoute: GetPage(
              name: AppRoutes.pageNotFound,
              page: () => const PageNotFound(),
            ),
            navigatorObservers: [AppNavigatorObserver()],
            useInheritedMediaQuery: true,
            themeMode: ThemeMode.system,
            theme: AppTheme.lightTheme,
          );
        },
      ),
    );





  }
}