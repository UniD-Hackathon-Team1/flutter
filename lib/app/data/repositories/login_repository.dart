
import 'package:unid2022/app/data/models/user_info_model.dart';
import 'package:unid2022/app/data/models/user_model.dart';
import 'package:unid2022/app/data/providers/user_info_provider.dart';

class LoginRepository {
  final UserInfoProvider userInfoProvider;

  LoginRepository({required this.userInfoProvider})
      : assert(userInfoProvider != null);

  Future<UserInfo?> login(User user) async => await userInfoProvider.login(user);
  Future<UserInfo?> checkTokenExist() async => await userInfoProvider.checkTokenExist();
}