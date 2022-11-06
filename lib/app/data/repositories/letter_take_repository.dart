import 'package:unid2022/app/data/models/bottle_model.dart';
import 'package:unid2022/app/data/providers/bottle_provider.dart';

class LetterTakeRepository {
  final BottleProvider bottleProvider;

  LetterTakeRepository({required this.bottleProvider})
      : assert(bottleProvider != null);

  Future<Bottle?> getBottle(int id) async =>
      await bottleProvider.getBottle(id);

  Future<String> addLetter(int id,String text) async =>
      await bottleProvider.addLetter(text,id);

}