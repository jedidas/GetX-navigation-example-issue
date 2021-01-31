import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:getx_1/app/modules/global/global_binding.dart';
// import 'package:getx_1/app/modules/global/global_controller.dart';
import 'package:getx_1/app/routes/Pages.dart';
import 'package:getx_1/app/routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Get.put(GlobalController(), permanent: true);
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: AppRoutes.SPLASH,
        getPages: AppPages.pages);
  }
}
