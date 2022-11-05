import 'package:get/get.dart';
import 'package:unid2022/app/data/providers/bottle_provider.dart';
import 'package:unid2022/app/data/repositories/letter_write_repository.dart';

import '../controllers/letter_write_controller.dart';

class LetterWriteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LetterWriteController>(
      () => LetterWriteController(letterWriteRepository: LetterWriteRepository(bottleProvider: BottleProvider())),
    );
  }
}
