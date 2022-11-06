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
      body: GetBuilder<ViewreviewletterController>(
        builder: (_) {
          return Container(
            height: 600,
            child: ListView.builder(
              itemCount: controller.bottle  == null ? 0 : controller.bottle!.letter!.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                      child: MaterialButton(
                        onPressed: () { Get.toNamed(Routes.VIEWRANDOMLETTER); },
                        child: Card(
                          color: Colors.indigo[index * 100],
                          child: Text(controller.bottle!.letter![index].text!,
                            style: TextStyle(fontSize: 20),
                            //style: TextStyle(fontSize: 20, backgroundColor: Colors.lightGreen),
                          ),
                        ),
                      ),
                    ),
                  ],
                );

              },
            ),
          );
        },
      ),
    );
  }
}
