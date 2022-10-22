import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/contact_me_controller.dart';

class ContactMeView extends GetView<ContactMeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ContactMeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ContactMeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
