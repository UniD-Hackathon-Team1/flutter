import 'package:get/get.dart';

import '../controllers/letter_take_controller.dart';

class LetterTakeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LetterTakeController>(
      () => LetterTakeController(),
    );
  }
}
