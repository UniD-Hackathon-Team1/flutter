import 'package:get/get.dart';

import '../controllers/book_shelf_controller.dart';

class BookShelfBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookShelfController>(
      () => BookShelfController(),
    );
  }
}
