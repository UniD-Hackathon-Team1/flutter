import 'package:get/get.dart';
import 'package:unid2022/app/data/models/bottle_model.dart';
import 'package:unid2022/app/data/models/user_model.dart';
import 'package:unid2022/app/data/repositories/home_repository.dart';
import 'package:unid2022/app/data/repositories/letter_take_repository.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final HomeRepository repository;
  final LetterTakeRepository repository2;
  late User? user;
  final count = 0.obs;

  HomeController({required this.repository,required this.repository2})
      : assert(repository != null);
  @override
  void onInit() async{
    super.onInit();
    user = await repository.getUser();
    Bottle? bottle = await repository2.getBottle(1);
    print(bottle!.letter![1].text!);
    print(user!.id);
    print(user!.password);
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
