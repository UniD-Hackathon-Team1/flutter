import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:unid2022/app/data/repositories/letter_write_repository.dart';

class LetterWriteController extends GetxController {
  //TODO: Implement LetterWriteController

  final count = 0.obs;
  final content = TextEditingController();
  final LetterWriteRepository letterWriteRepository;


  LetterWriteController({required this.letterWriteRepository});
  @override
  Future<void> onInit() async {
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

  Future<void> write() async {
    String buf = content.value.text;
    content.clear();
    await letterWriteRepository.sendBottle(buf);
  }
}
