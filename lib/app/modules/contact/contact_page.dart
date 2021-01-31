import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/app/modules/contact/contact_controller.dart';
import 'package:getx_1/app/routes/app_routes.dart';

class ContactPage extends GetView<ContactController> {
  const ContactPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Contact'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<ContactController>(
                id: 'algo',
                builder: (_) => Text('Contact ${controller.algo}'),
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
      ),
    );
  }
}
