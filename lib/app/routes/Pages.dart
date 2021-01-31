import 'package:get/get.dart';
import 'package:getx_1/app/modules/contact/contact_binding.dart';
import 'package:getx_1/app/modules/contact/contact_page.dart';
import 'package:getx_1/app/modules/home/home_binding.dart';
import 'package:getx_1/app/modules/home/home_page.dart';
import 'package:getx_1/app/modules/splash/splash_binding.dart';
import 'package:getx_1/app/modules/splash/splash_page.dart';
import 'package:getx_1/app/routes/app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.CONTACT,
      page: () => ContactPage(),
      binding: ContactBinding(),
    ),
  ];
}
