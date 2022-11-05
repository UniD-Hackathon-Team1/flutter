import 'package:get/get.dart';
import 'package:unid2022/app/data/models/user_model.dart';
import 'package:unid2022/app/data/repositories/home_repository.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final HomeRepository repository;
  late User? user;
  final count = 0.obs;

  HomeController({required this.repository})
      : assert(repository != null);
  @override
  void onInit() async{
    super.onInit();
    user = await repository.getUser();
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
  void increment() => count.value++;
}
