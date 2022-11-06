import 'package:unid2022/app/data/models/bottle_model.dart';
import 'package:unid2022/app/data/providers/bottle_provider.dart';

class ViewreviewletterRepository {
  final BottleProvider bottleProvider;

  ViewreviewletterRepository({required this.bottleProvider})
      : assert(bottleProvider != null);

  Future<Bottle?> getMyBottle(id) async =>
      await bottleProvider.getBottle(id);

}