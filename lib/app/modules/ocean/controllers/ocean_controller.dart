import 'package:get/get.dart';
import 'package:unid2022/app/data/models/notice_model.dart';
import 'package:unid2022/app/data/repositories/ocean_repository.dart';
import 'package:unid2022/app/routes/app_pages.dart';

class OceanController extends GetxController {

  final OceanRepository repository;
  int pelicanBottleId = -1;
  int glassBottleId = -1;
  OceanController({required this.repository});
  @override
  void onInit() async{
    super.onInit();
    Notice? notice = await repository.getNotice();
    if(pelicanBottleId<0)pelicanBottleId = notice!.pelicanBottleId??-1;
    if(glassBottleId<0)glassBottleId = notice!.glassBottleId??-1;
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

  void pelicanClicked(){
    int buf = pelicanBottleId;
    pelicanBottleId = -1;
    update();
    Get.toNamed(Routes.VIEWREVIEWLETTER,arguments: buf.toString());
  }
  void bottleClicked(){
    int buf = glassBottleId;
    glassBottleId = -1;
    update();
    Get.toNamed(Routes.LETTER_TAKE,arguments: buf.toString());
  }
}
