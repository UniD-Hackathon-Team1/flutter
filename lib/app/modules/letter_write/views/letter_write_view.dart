import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/letter_write_controller.dart';

class LetterWriteView extends GetView<LetterWriteController> {
  const LetterWriteView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LetterWriteView'),
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
        child: Center(
            child: Column(
              children: <Widget>[
                TextField(
                  controller: controller.content,
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.all(30.0)
                  ),
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                ),
              ],
            )


        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.blueGrey,
        child: const Icon(Icons.save),
      ),
    );
  }
}
