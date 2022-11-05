import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/letter_write_controller.dart';

class LetterWriteView extends GetView<LetterWriteController> {
  const LetterWriteView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      isDense: true
                  ),
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
