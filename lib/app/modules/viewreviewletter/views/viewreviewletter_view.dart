import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/viewreviewletter_controller.dart';

// 리뷰 달린 자신의 편지 - 펠리컨이 물고 오는 것
class ViewreviewletterView extends GetView<ViewreviewletterController> {
  const ViewreviewletterView({Key? key}) : super(key: key);
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
