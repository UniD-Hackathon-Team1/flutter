import 'package:get/get.dart';

import '../../../data/models/bottle_model.dart';
import '../../../data/repositories/book_shelf_repository.dart';


class BookShelfController extends GetxController {
  //TODO: Implement BookShelfController

  final count = 0.obs;
  final BookShelfRepository bookShelfRepository;
  Bottle? letters;

  BookShelfController({required this.bookShelfRepository});
  @override
  Future<void> onInit() async {
    super.onInit();
    letters = await bookShelfRepository.getMyBottle();
    print(letters!.letter![0].timeDate );
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
