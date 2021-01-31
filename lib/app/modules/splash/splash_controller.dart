import 'dart:async';

import 'package:get/get.dart';
import 'package:getx_1/app/routes/app_routes.dart';

class SplashController extends GetxController {
  int _interval;
  int get interval => _interval;

  @override
  void onInit() {
    super.onInit();
    _interval = 5;
    print('Splash_onInit');
  }

  @override
  void onReady() {
    super.onReady();
    print('Splash_onReady');
    counterDown();
  }

  @override
  void onClose() {
    super.onClose();
    print('Splash_onClose');
  }

  void counterDown() {
    Timer _incrementCounterTimer;
    _incrementCounterTimer = Timer.periodic(new Duration(seconds: 1), (timer) {
      if (timer.tick >= 5) {
        _incrementCounterTimer.cancel();
        Get.offNamed(AppRoutes.HOME);
      }
      _interval--;
      update(['interval']);
    });
  }
}
