import 'package:get/get.dart';
import 'package:unid2022/app/data/providers/bottle_provider.dart';
import 'package:unid2022/app/data/providers/notice_provider.dart';
import 'package:unid2022/app/data/repositories/ocean_repository.dart';

import '../controllers/ocean_controller.dart';

class OceanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OceanController>(
      () => OceanController(repository: OceanRepository(bottleProvider: BottleProvider(),noticeProvider: NoticeProvider())),
    );
  }
}
