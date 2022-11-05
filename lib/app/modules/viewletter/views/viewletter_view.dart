import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/viewletter_controller.dart';

class ViewletterView extends GetView<ViewletterController> {
  const ViewletterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('LetterView'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          actions: [
            IconButton(
            icon: Icon(Icons.home),
            onPressed: () {Get.toNamed(Routes.LETTER);},
            ),
          ],
        ),
        body: Container(

        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/images/letter.jpg"),
        fit: BoxFit.cover),
        ),
      ),
    );
  }
}
