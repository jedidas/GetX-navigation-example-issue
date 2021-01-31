import 'package:get/get.dart';
import 'package:getx_1/app/modules/global/global_controller.dart';

class GlobalBinding implements Bindings {
  @override
  void dependencies() {
    return Get.lazyPut(()=>GlobalController());
  }
}