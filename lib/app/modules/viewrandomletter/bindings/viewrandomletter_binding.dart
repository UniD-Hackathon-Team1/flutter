import 'package:get/get.dart';

import '../controllers/viewrandomletter_controller.dart';

class ViewrandomletterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewrandomletterController>(
      () => ViewrandomletterController(),
    );
  }
}
