import 'package:unid2022/app/data/models/bottle_model.dart';
import 'package:unid2022/app/data/providers/bottle_provider.dart';

class BookShelfRepository {
  final BottleProvider bottleProvider;

  BookShelfRepository({required this.bottleProvider})
      : assert(bottleProvider != null);

  Future<Bottle?> getMyBottle() async =>
      await bottleProvider.getMyBottle();


}

