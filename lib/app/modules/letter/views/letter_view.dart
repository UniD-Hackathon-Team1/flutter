import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:unid2022/app/modules/letter_write/views/letter_write_view.dart';
import 'package:unid2022/app/routes/app_pages.dart';

import '../controllers/letter_controller.dart';

class LetterView extends GetView<LetterController> {
  const LetterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
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
                image: AssetImage("assets/images/background_room.jpg"),
                fit: BoxFit.cover),
          ),

      ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {Get.toNamed(Routes.OCEAN);},
              heroTag: Text("btn1"),
              backgroundColor: Colors.lightBlueAccent,
              child: Icon(Icons.sailing),
            ),
            SizedBox(height: 8,),
            FloatingActionButton(
              heroTag: Text("btn2"),
              onPressed: () {Get.toNamed(Routes.BOOK_SHELF);},
              child: Icon(Icons.menu_book_outlined),
            ),
            SizedBox(height: 8,),
            FloatingActionButton(
              heroTag: Text("btn3"),
              onPressed: () {Get.toNamed(Routes.LETTER_WRITE);},
              backgroundColor: Colors.blueAccent,
              child: Icon(Icons.create),
            ),
          ],
        )

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     // Add your onPressed code here!
      //     Get.toNamed(Routes.LETTER_WRITE);
      //
      //   },
      //   backgroundColor: Colors.blueGrey,
      //   child: const Icon(Icons.create),
      // ),
    );
  }
}
