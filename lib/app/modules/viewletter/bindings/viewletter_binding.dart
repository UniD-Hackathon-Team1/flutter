import 'package:get/get.dart';

import '../controllers/viewletter_controller.dart';

class ViewletterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewletterController>(
      () => ViewletterController(),
    );
  }
}
