import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/letter_controller.dart';

class LetterView extends GetView<LetterController> {
  const LetterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          constraints: BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background_room.jpg"),
                fit: BoxFit.cover),
          ),
        )
    );
  }
}
