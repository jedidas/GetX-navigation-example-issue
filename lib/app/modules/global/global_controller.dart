import 'package:get/get.dart';

class GlobalController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    print('Global_onInit');
  }

  @override
  void onReady() {
    super.onReady();
    print('Global_onReady');
  }

  @override
  void onClose() {
    super.onClose();
    print('Global_onClose');
  }

  void goTo(String name, arguments) {
    Get.toNamed(name, arguments: arguments);
  }
}
