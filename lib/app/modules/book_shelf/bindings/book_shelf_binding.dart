import 'package:get/get.dart';
import 'package:unid2022/app/data/providers/bottle_provider.dart';
import 'package:unid2022/app/data/repositories/book_shelf_repository.dart';

import '../controllers/book_shelf_controller.dart';

class BookShelfBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookShelfController>(
      () => BookShelfController(bookShelfRepository: BookShelfRepository(bottleProvider: BottleProvider())),
    );
  }
}
