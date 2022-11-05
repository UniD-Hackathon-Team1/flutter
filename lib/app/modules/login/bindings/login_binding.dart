import 'package:get/get.dart';
import 'package:unid2022/app/data/providers/user_info_provider.dart';
import 'package:unid2022/app/data/repositories/login_repository.dart';

import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(repository: LoginRepository(userInfoProvider: UserInfoProvider())),
    );
  }
}
