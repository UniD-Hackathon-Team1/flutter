import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/viewletter_controller.dart';

class ViewletterView extends GetView<ViewletterController> {
  const ViewletterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ViewletterView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ViewletterView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
