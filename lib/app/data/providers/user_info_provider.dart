import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:unid2022/app/data/models/user_model.dart';
import 'package:unid2022/constatnts.dart';

import 'package:http/http.dart' as http;

import '../models/user_info_model.dart';

class UserInfoProvider extends GetConnect {
  GetStorage box = GetStorage();
  final connect = GetConnect();

  @override
  void onInit() {
    httpClient.baseUrl = 'https://late-terms-scream-123-212-9-154.loca.lt/';
  }

  Future<UserInfo?> checkTokenExist() async {
    var userInfoJson = box.read(Constants.userBox);
    if (userInfoJson == null) return null;
    return UserInfo.fromJson(userInfoJson);
  }

  Future<UserInfo?> getUserInfo(int id) async {
    final response = await get('userinfo/$id');
    return response.body;
  }

  Future<UserInfo?> login(User user) async {
    Uri uri =
        Uri.https('late-terms-scream-123-212-9-154.loca.lt', 'user/login');
    var response = await http.post(uri,
        headers: {
          "Content-Type": "application/json",
          "Access-Control-Allow-Origin": "*",
          'Accept': '*/*'
        },
        body: jsonEncode({"userId": "jjjj", "password": "passw1234!"}));
    print(response.body);
    var k = jsonDecode(utf8.decode(response.bodyBytes));

    UserInfo userInfo = UserInfo.fromJson(k);
    box.write(Constants.userBox, userInfo.toJson());
    return userInfo;
  }
}
