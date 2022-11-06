import 'package:get/get.dart';
import 'package:unid2022/app/data/models/bottle_model.dart';
import 'package:unid2022/app/data/repositories/viewreviewletter_repotitory.dart';

class ViewreviewletterController extends GetxController {
  //TODO: Implement ViewreviewletterController
  final ViewreviewletterRepository repository;
  Bottle? bottle;

  ViewreviewletterController({required this.repository});
  @override
  void onInit() async{
    super.onInit();
    bottle = await repository.getMyBottle(int.parse(Get.arguments));
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
}
