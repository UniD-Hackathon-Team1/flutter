import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:unid2022/constatnts.dart';

import '../models/bottle_model.dart';

class BottleProvider extends GetConnect {
  GetStorage box = GetStorage();
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Bottle.fromJson(map);
      if (map is List) return map.map((item) => Bottle.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Bottle?> getBottle(int id) async {
    var bottleBox = box.read(Constants.bottleBox);
    if(bottleBox == null){
      bottleBox = {};
      box.write(Constants.bottleBox, {});
    }
    var bottlejson = bottleBox[id.toString()];
    if(bottlejson == null){
      bottlejson = {
        "bottleId":1234,
        "letter":[
          {
            "text":"편지1",
            "timeDate":{
              "year":2021,
              "month": 7,
              "day": 21
            }
          },
          {
            "text":"이 편지는 영국에서 부터 시작되어..",
            "timeDate":{
              "year":2021,
              "month": 7,
              "day": 24
            }
          },
          {
            "text":"이 편지는 영국에서 부터 시작되어..",
            "timeDate":{
              "year":2021,
              "month": 7,
              "day": 25
            }
          },
          {
            "text":"이 편지는 영국에서 부터 시작되어..",
            "timeDate":{
              "year":2021,
              "month": 7,
              "day": 26
            }
          },
          {
            "text":"이 편지는 영국에서 부터 시작되어..",
            "timeDate":{
              "year":2021,
              "month": 7,
              "day": 27
            }
          },{
            "text":"이 편지는 영국에서 부터 시작되어..",
            "timeDate":{
              "year":2021,
              "month": 7,
              "day": 28
            }
          }
        ]
      };
      box.write(Constants.bottleBox, bottlejson);
    }
    Bottle bottle = Bottle.fromJson(bottlejson);
    // final response = await get('bottle/$id');
    // if .
    // var k = box.read(Constants.bottleBox);
    // print(k);
    return bottle;
  }



  Future<Response<Bottle>> postBottle(Bottle bottle) async =>
      await post('bottle', bottle);
  Future<Response> deleteBottle(int id) async => await delete('bottle/$id');
}
