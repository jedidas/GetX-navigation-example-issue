import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/app/modules/home/home_controller.dart';
import 'package:getx_1/app/routes/app_routes.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<HomeController>(
                id: 'counter',
                builder: (_) => Text('${controller.counter}'),
              ),
              FlatButton(
                child: Icon(Icons.send),
                onPressed: () {
                  controller.goTo(AppRoutes.SPLASH);
                },
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: controller.increment,
        ),
      ),
    );
  }
}
