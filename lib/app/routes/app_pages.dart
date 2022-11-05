import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/letter/bindings/letter_binding.dart';
import '../modules/letter/views/letter_view.dart';
<<<<<<< HEAD
import '../modules/letter_write/bindings/letter_write_binding.dart';
import '../modules/letter_write/views/letter_write_view.dart';
=======
import '../modules/letter_take/bindings/letter_take_binding.dart';
import '../modules/letter_take/views/letter_take_view.dart';
>>>>>>> 4700f5a9f47e0316c4ec20bd1d731558b81750cd
import '../modules/ocean/bindings/ocean_binding.dart';
import '../modules/ocean/views/ocean_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LETTER;

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
    GetPage(
<<<<<<< HEAD
      name: _Paths.LETTER_WRITE,
      page: () => const LetterWriteView(),
      binding: LetterWriteBinding(),
=======
      name: _Paths.LETTER_TAKE,
      page: () => const LetterTakeView(),
      binding: LetterTakeBinding(),
>>>>>>> 4700f5a9f47e0316c4ec20bd1d731558b81750cd
    ),
  ];
}
