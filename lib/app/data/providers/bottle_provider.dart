import 'package:get/get.dart';

import '../models/bottle_model.dart';

class BottleProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Bottle.fromJson(map);
      if (map is List) return map.map((item) => Bottle.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Bottle?> getBottle(int id) async {
    // final response = await get('bottle/$id');
    final Bottle response = Bottle.fromJson(
        {
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
                "day": 21
              }
            }
          ]
        }
    );
    return response;
  }

  Future<Response<Bottle>> postBottle(Bottle bottle) async =>
      await post('bottle', bottle);
  Future<Response> deleteBottle(int id) async => await delete('bottle/$id');
}
