import 'package:get/get.dart';

import '../controllers/letter_write_controller.dart';

class LetterWriteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LetterWriteController>(
      () => LetterWriteController(),
    );
  }
}
