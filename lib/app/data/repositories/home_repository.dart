
import 'package:unid2022/app/data/models/user_model.dart';
import 'package:unid2022/app/data/providers/user_provider.dart';

class HomeRepository {
  final UserProvider userProvider;

  HomeRepository({required this.userProvider})
      : assert(userProvider != null);

  Future<User?> getUser() async =>
      await userProvider.getUser();

}