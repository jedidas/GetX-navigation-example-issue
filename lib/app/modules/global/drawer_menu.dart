import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/app/modules/global/global_controller.dart';
import 'package:getx_1/app/routes/app_routes.dart';

class DrawerMenu extends GetView<GlobalController> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Splash'),
            onTap: () {
              Get.toNamed(AppRoutes.SPLASH);
            },
          ),
          Divider(),
          ListTile(
            title: Text('Home'),
            onTap: () {
              Get.toNamed(AppRoutes.HOME);
            },
          ),
          Divider(),
          ListTile(
            title: Text('Contact'),
            onTap: () {
              Get.toNamed(AppRoutes.CONTACT);
            },
          ),
        ],
      ),
    );
  }
}
