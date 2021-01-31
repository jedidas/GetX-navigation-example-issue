import 'dart:async';

import 'package:get/get.dart';
import 'package:getx_1/app/routes/app_routes.dart';

class HomeController extends GetxController {
  int _counter = 0;
  int get counter => _counter;

  @override
  void onInit() {
    super.onInit();
    print('Home_onInit');
  }

  @override
  void onReady() {
    super.onReady();
    counterDown();
    print('Home_onReady');
  }

  @override
  void onClose() {
    super.onClose();
    print('Home_onClose');
  }

  void increment() {
    _counter++;
    print('increment');
    update(['counter']);
  }

  void goTo(String name) {
    Get.toNamed(name);
  }

  void counterDown() {
    Timer _incrementCounterTimer;
    _incrementCounterTimer = Timer.periodic(new Duration(seconds: 1), (timer) {
      if (timer.tick >= 5) {
        _incrementCounterTimer.cancel();
        Get.toNamed(AppRoutes.CONTACT);
      }
      update(['counter']);
    });
  }
}
