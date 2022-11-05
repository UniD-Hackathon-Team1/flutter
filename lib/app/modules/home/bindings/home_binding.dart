import 'package:get/get.dart';
import 'package:unid2022/app/data/providers/user_provider.dart';

import '../../../data/repositories/home_repository.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
          () => HomeController(repository: HomeRepository(userProvider: UserProvider())),    );
  }
}
