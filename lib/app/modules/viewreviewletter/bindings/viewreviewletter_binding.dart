import 'package:get/get.dart';
import 'package:unid2022/app/data/providers/bottle_provider.dart';
import 'package:unid2022/app/data/repositories/viewreviewletter_repotitory.dart';

import '../controllers/viewreviewletter_controller.dart';

class ViewreviewletterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewreviewletterController>(
      () => ViewreviewletterController(repository: ViewreviewletterRepository(bottleProvider: BottleProvider())),
    );
  }
}
