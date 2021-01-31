import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/app/modules/splash/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Splash'),
        ),
        body: Center(
          child: GetBuilder<SplashController>(
            id: 'interval',
            builder: (_) => Text('Iniciamos en ${controller.interval}'),
          ),
        ),
      ),
    );
  }
}
