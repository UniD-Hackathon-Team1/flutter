import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/book_shelf_controller.dart';

class BookShelfView extends GetView<BookShelfController> {
  const BookShelfView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookShelfView'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {Get.toNamed(Routes.LETTER);},
          ),
        ],
      ),
      body: Column(
          children:<Widget>[
          Container(
            height: 640,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/book_shelf.jpg"),
                  fit: BoxFit.cover),
            ),
          child: GetBuilder<BookShelfController>(
            builder: (_) {
              return new ListView.builder(
                itemCount: controller.letters  == null ? 0 : controller.letters!.letter!.length,
                itemBuilder: (BuildContext context, int index) {
                  return new Card(
                    child: new Text(controller.letters!.letter![index].timeDate!.year.toString() + "년" +
                        controller.letters!.letter![index].timeDate!.month.toString() + "월" +
                        controller.letters!.letter![index].timeDate!.day.toString() + "일"),
                  );
                },
              );
            },
          ),
          ),
        ]
      ),

    );
  }
}
