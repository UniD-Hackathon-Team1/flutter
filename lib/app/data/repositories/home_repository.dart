
import 'package:unid2022/app/data/models/user_model.dart';
import 'package:unid2022/app/data/providers/user_info_provider.dart';

class HomeRepository {
  final UserInfoProvider userInfoProvider;

  HomeRepository({required this.userInfoProvider})
      : assert(userInfoProvider != null);

}