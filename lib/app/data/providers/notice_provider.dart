import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:unid2022/app/data/models/user_info_model.dart';
import 'package:unid2022/constatnts.dart';
import '../models/notice_model.dart';

class NoticeProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Notice.fromJson(map);
      if (map is List) return map.map((item) => Notice.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Notice?> getNotice() async {

    GetStorage box = GetStorage();
    var userInfoJson = box.read(Constants.userBox);
    UserInfo userInfo = UserInfo.fromJson(userInfoJson);
    print(userInfo.token);
    Uri uri =
    Uri.https(Constants.serverApi, 'bottle/random');
    var response = await http.get(uri,
        headers: {
          "Content-Type": "application/json",
          "Access-Control-Allow-Origin": "*",
          'Accept': '*/*',
          'X-AUTH-TOKEN':userInfo.token!
        },);
    print(response.body);
    var k = jsonDecode(utf8.decode(response.bodyBytes));

    Notice notice = Notice.fromJson(k);
    print(notice.glassBottleId);
    print(notice.pelicanBottleId);
    return notice;
  }
}
