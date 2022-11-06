import 'package:get/get.dart';

import '../../../data/models/bottle_model.dart';
import '../../../data/repositories/book_shelf_repository.dart';


class BookShelfController extends GetxController {
  //TODO: Implement BookShelfController

  final BookShelfRepository bookShelfRepository;
  Bottle? letters;
  int expande = -1;

  BookShelfController({required this.bookShelfRepository});
  @override
  Future<void> onInit() async {
    super.onInit();
    letters = await bookShelfRepository.getMyBottle();
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

  void changeExpanded(number) {
    if(number == expande){
      expande = -1;
    }
    else{
      expande = number;
    }
    update();
  }
}
