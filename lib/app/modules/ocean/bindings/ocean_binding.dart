import 'package:get/get.dart';

import '../controllers/ocean_controller.dart';

class OceanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OceanController>(
      () => OceanController(),
    );
  }
}
