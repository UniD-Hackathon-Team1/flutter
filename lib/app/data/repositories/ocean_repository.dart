import 'package:unid2022/app/data/models/bottle_model.dart';
import 'package:unid2022/app/data/models/notice_model.dart';
import 'package:unid2022/app/data/providers/bottle_provider.dart';
import 'package:unid2022/app/data/providers/notice_provider.dart';

class OceanRepository {
  final NoticeProvider noticeProvider;
  final BottleProvider bottleProvider;

  OceanRepository({required this.noticeProvider, required this.bottleProvider})
      : assert(noticeProvider != null);

  Future<Bottle?> getMyBottle() async =>
      await bottleProvider.getMyBottle();

  Future<Notice?> getNotice() async => await noticeProvider.getNotice();


}

