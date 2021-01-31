import 'dart:async';

import 'package:get/get.dart';
import 'package:getx_1/app/routes/app_routes.dart';

class ContactController extends GetxController {
  String get algo => 'Algo';

  @override
  void onInit() {
    super.onInit();
    print('Contact_onInit');
  }

  @override
  void onReady() {
    super.onReady();
    print('Contact_onReady');
    counterDown();
  }

  @override
  void onClose() {
    super.onClose();
    print('Contact_onClose');
  }

  void goTo(String name) {
    Get.toNamed(name);
  }

  void counterDown() {
    Timer _incrementCounterTimer;
    _incrementCounterTimer = Timer.periodic(new Duration(seconds: 1), (timer) {
      if (timer.tick >= 5) {
        _incrementCounterTimer.cancel();
        Get.toNamed(AppRoutes.HOME);
      }
      update(['algo']);
    });
  }
}
