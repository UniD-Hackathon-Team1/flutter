import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LetterWriteController extends GetxController {
  //TODO: Implement LetterWriteController

  final count = 0.obs;
  final content = TextEditingController();

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
