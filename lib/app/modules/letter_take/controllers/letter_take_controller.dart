import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LetterTakeController extends GetxController {
  //TODO: Implement LetterTakeController

  final count = 0.obs;
  final content = TextEditingController();//에디트 위함
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
