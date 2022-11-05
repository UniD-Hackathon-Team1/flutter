import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/letter_controller.dart';

class LetterView extends GetView<LetterController> {
  const LetterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LetterView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'LetterView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    )q
  }
}
