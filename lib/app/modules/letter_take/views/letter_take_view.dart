import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:unid2022/app/modules/letter_write/views/letter_write_view.dart';

import '../controllers/letter_take_controller.dart';

class LetterTakeView extends GetView<LetterTakeController> {
  const LetterTakeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('유리병'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          '편지 받아온거 글 보여주기',
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=> const LetterWriteView()),
          );
        },
        backgroundColor: Colors.blueGrey,
        child: const Icon(Icons.create),
      ),
    );
  }
}
