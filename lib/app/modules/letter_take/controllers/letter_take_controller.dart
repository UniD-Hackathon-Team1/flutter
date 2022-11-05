import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:unid2022/app/data/providers/bottle_provider.dart';

class LetterTakeController extends GetxController {
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
