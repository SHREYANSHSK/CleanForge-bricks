import 'package:get/get.dart';
import 'package:{{package_name}}/features/home/presentation/bindings/home_binding.dart';
import 'package:{{package_name}}/features/home/presentation/pages/home_page.dart';
import 'package:{{package_name}}/routes/app_routes.dart';
import 'package:{{package_name}}/app/page_not_found.dart';


class AppPages {
  static const initial = AppRoutes.home;

  static final pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.pageNotFound,
      page: () => const PageNotFound(),
    )
  ];
}