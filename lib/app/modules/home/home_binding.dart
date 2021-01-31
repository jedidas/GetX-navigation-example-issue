import 'package:get/get.dart';
import 'package:getx_1/app/modules/home/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(()=>HomeController());
  }
}