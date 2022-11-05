import 'package:get/get.dart';

import '../../../data/models/bottle_model.dart';

class BookShelfController extends GetxController {
  //TODO: Implement BookShelfController

  final count = 0.obs;

  get letterTakeRepository => null;
  @override
  Future<void> onInit() async {
    super.onInit();
    Bottle? letters = await letterTakeRepository.getBottle(1);
    print(letters!.letter![0].text );
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
