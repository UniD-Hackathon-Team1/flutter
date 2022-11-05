import 'package:unid2022/app/data/models/bottle_model.dart';
import 'package:unid2022/app/data/providers/bottle_provider.dart';

class LetterWriteRepository {
  final BottleProvider bottleProvider;

  LetterWriteRepository({required this.bottleProvider})
      : assert(bottleProvider != null);

  Future<void> sendBottle(String text) async => await bottleProvider.postBottle(text);


}