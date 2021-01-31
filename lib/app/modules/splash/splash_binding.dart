import 'package:get/get.dart';
import 'package:getx_1/app/modules/splash/splash_controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    return Get.lazyPut(()=>SplashController());
  }
}