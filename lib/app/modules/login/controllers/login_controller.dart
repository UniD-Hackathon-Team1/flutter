import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:unid2022/app/data/models/user_info_model.dart';
import 'package:unid2022/app/data/models/user_model.dart';
import 'package:unid2022/app/data/repositories/login_repository.dart';
import 'package:unid2022/app/routes/app_pages.dart';

class LoginController extends GetxController {
  //todo: silent login
  final LoginRepository repository;
  TextEditingController idController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginController({required this.repository});

  @override
  void onInit() async {
    super.onInit();
    UserInfo? userInfo = await repository.checkTokenExist();
    if (userInfo != null) Get.toNamed(Routes.LETTER);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void login() async {
    User user = User(
        userId: idController.value.text,
        password: passwordController.value.text);
    UserInfo? userInfo = await repository.login(user);
    idController.clear();
    passwordController.clear();
    if (userInfo != null) {
      Get.toNamed(Routes.LETTER);
    }
  }
}
