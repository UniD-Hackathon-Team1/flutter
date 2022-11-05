import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/viewrandomletter_controller.dart';

// 다른 사람의 편지 - 랜덤으로 바다 유리병
class ViewrandomletterView extends GetView<ViewrandomletterController> {
  const ViewrandomletterView({Key? key}) : super(key: key);
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
