import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:unid2022/app/data/models/user_info_model.dart';
import 'package:unid2022/constatnts.dart';

import '../models/bottle_model.dart';
import 'package:http/http.dart' as http;
class BottleProvider extends GetConnect {
  GetStorage box = GetStorage();
  late var bottleBox;
  @override
  void onInit() async{
  }

  Future<Bottle?> getBottle(int id) async {
    String tex = 'bottle/'+id.toString();
    Uri uri =
    Uri.https(Constants.serverApi, tex);
    var response = await http.get(uri,
      headers: {
        "Content-Type": "application/json",
        "Access-Control-Allow-Origin": "*",
        'Accept': '*/*',
      },);
    var j = jsonDecode(utf8.decode(response.bodyBytes));
    Bottle bottle = Bottle.fromJson(j);
    return bottle;
  }

  Future<Bottle?> getMyBottle() async {
    String tex = 'letter_list';
    GetStorage box = GetStorage();
    var userInfoJson = box.read(Constants.userBox);
    UserInfo userInfo = UserInfo.fromJson(userInfoJson);
    Uri uri =
    Uri.https(Constants.serverApi, tex);
    var response = await http.get(uri,
      headers: {
        "Content-Type": "application/json",
        "Access-Control-Allow-Origin": "*",
        'Accept': '*/*',
        'X-AUTH-TOKEN':userInfo.token!
      },);
    List j = jsonDecode(utf8.decode(response.bodyBytes));
    List p = [];
    for(int i = 0;i<j.length;i++){
      p.add({"text":j[i]['text'],"timeDate":j[i]['time']});
    }
    var js = {"bottleId":-1,"letter":p};
    Bottle bottle = Bottle.fromJson(js);
    return bottle;
  }


  Future<String> addLetter(String text,int bottleId) async {
    String tex = 'write';
    GetStorage box = GetStorage();
    var userInfoJson = box.read(Constants.userBox);
    UserInfo userInfo = UserInfo.fromJson(userInfoJson);
    Uri uri =
    Uri.https(Constants.serverApi, tex);
    var response = await http.post(uri,
        headers: {
          "Content-Type": "application/json",
          "Access-Control-Allow-Origin": "*",
          'Accept': '*/*',
          'X-AUTH-TOKEN':userInfo.token!
        },body: jsonEncode({
          "text" : text,"bottleId":bottleId
        }));
    return response!.body;
  }


  Future<String> postBottle(String text) async {
    String tex = 'write';
    GetStorage box = GetStorage();
    var userInfoJson = box.read(Constants.userBox);
    UserInfo userInfo = UserInfo.fromJson(userInfoJson);
    Uri uri =
    Uri.https(Constants.serverApi, tex);
    var response = await http.post(uri,
      headers: {
        "Content-Type": "application/json",
        "Access-Control-Allow-Origin": "*",
        'Accept': '*/*',
        'X-AUTH-TOKEN':userInfo.token!
      },body: jsonEncode({
          "text" : text
        }));
    return response!.body;
  }

}
