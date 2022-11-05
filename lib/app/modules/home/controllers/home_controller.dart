import 'package:get/get.dart';
import 'package:unid2022/app/data/models/bottle_model.dart';
import 'package:unid2022/app/data/models/user_model.dart';
import 'package:unid2022/app/data/repositories/book_shelf_repository.dart';
import 'package:unid2022/app/data/repositories/home_repository.dart';
import 'package:unid2022/app/data/repositories/letter_take_repository.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final HomeRepository repository;
  final BookShelfRepository repository2;
  late User? user;
  final count = 0.obs;

  HomeController({required this.repository,required this.repository2})
      : assert(repository != null);
  @override
  void onInit() async{
    super.onInit();
    user = await repository.getUser();
    Bottle? bottle = await repository2.getMyBottle();
    print(bottle!.letter![0].text!);
    print('test');
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() {count.value++; update();}
}
