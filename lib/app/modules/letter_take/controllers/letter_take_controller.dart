import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:unid2022/app/data/models/bottle_model.dart';
import 'package:unid2022/app/data/providers/bottle_provider.dart';
import 'package:unid2022/app/data/repositories/letter_take_repository.dart';

class LetterTakeController extends GetxController {
  final count = 0.obs;
  final LetterTakeRepository letterTakeRepository;
  final content = TextEditingController();
  Bottle? letters;
  LetterTakeController({required this.letterTakeRepository});//에디트 위함
  @override
  void onInit() async{
    super.onInit();
    letters = await letterTakeRepository.getBottle(1);
    print(letters!.bottleId);
    print(letters!.letter![0].text );
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

  void increment() => count.value++;
}
