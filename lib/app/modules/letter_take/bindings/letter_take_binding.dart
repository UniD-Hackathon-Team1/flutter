import 'package:get/get.dart';
import 'package:unid2022/app/data/providers/bottle_provider.dart';
import 'package:unid2022/app/data/repositories/letter_take_repository.dart';

import '../controllers/letter_take_controller.dart';

class LetterTakeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LetterTakeController>(
      () => LetterTakeController(letterTakeRepository: LetterTakeRepository(bottleProvider: BottleProvider())),
    );
  }
}
