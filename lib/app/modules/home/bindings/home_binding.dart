import 'package:get/get.dart';
import 'package:unid2022/app/data/providers/bottle_provider.dart';
import 'package:unid2022/app/data/providers/user_info_provider.dart';
import 'package:unid2022/app/data/repositories/book_shelf_repository.dart';
import '../../../data/repositories/home_repository.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
            () =>
            HomeController(
              repository: HomeRepository(userInfoProvider: UserInfoProvider()),
              repository2: BookShelfRepository(
                  bottleProvider: BottleProvider()),));
    }
}
