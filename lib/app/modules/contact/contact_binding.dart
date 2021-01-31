import 'package:get/get.dart';
import 'package:getx_1/app/modules/contact/contact_controller.dart';

class ContactBinding implements Bindings {
  @override
  void dependencies() {
    return Get.lazyPut(() => ContactController());
  }
}
