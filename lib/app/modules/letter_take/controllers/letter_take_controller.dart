import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:unid2022/app/data/models/bottle_model.dart';
import 'package:unid2022/app/data/repositories/letter_take_repository.dart';

class LetterTakeController extends GetxController {
  final LetterTakeRepository letterTakeRepository;
  final content = TextEditingController();
  Bottle? letters;
  LetterTakeController({required this.letterTakeRepository});//에디트 위함
  @override
  void onInit() async{
    super.onInit();
    letters = await letterTakeRepository.getBottle(int.parse(Get.arguments));
    update();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
