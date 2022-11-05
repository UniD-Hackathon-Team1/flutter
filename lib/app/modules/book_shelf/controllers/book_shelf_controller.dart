import 'package:get/get.dart';

import '../../../data/models/bottle_model.dart';

class BookShelfController extends GetxController {
  //TODO: Implement BookShelfController

  final count = 0.obs;
  // final BookShelfRepository bookShelfRepository;
  // Bottle? letters;
  // BookShelfRepository({required this.bookShelfRepository});
  @override
  Future<void> onInit() async {
    super.onInit();
    // letters = await bookShelfRepository.getBottle(1);
    // print(letters!.letter![0].text );
    // update();
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
