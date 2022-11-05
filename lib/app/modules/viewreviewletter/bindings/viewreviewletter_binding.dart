import 'package:get/get.dart';

import '../controllers/viewreviewletter_controller.dart';

class ViewreviewletterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewreviewletterController>(
      () => ViewreviewletterController(),
    );
  }
}
