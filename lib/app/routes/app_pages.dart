import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/ocean/bindings/ocean_binding.dart';
import '../modules/ocean/views/ocean_view.dart';
import '../modules/letter/bindings/letter_binding.dart';
import '../modules/letter/views/letter_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.OCEAN,
      page: () => const OceanView(),
      binding: OceanBinding(),
    ),
    GetPage(
      name: _Paths.LETTER,
      page: () => const LetterView(),
      binding: LetterBinding(),
    ),
  ];
}
