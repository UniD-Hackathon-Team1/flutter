import 'package:get/get.dart';

import '../modules/book_shelf/bindings/book_shelf_binding.dart';
import '../modules/book_shelf/views/book_shelf_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/letter/bindings/letter_binding.dart';
import '../modules/letter/views/letter_view.dart';
import '../modules/letter_take/bindings/letter_take_binding.dart';
import '../modules/letter_take/views/letter_take_view.dart';
import '../modules/letter_write/bindings/letter_write_binding.dart';
import '../modules/letter_write/views/letter_write_view.dart';
import '../modules/ocean/bindings/ocean_binding.dart';
import '../modules/ocean/views/ocean_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();
<<<<<<< HEAD

  static const INITIAL = Routes.LETTER;
=======
  static const INITIAL = Routes.OCEAN;
>>>>>>> 0285ae65073a8ebb305ed49bfea99dd9562890e0

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
      name: _Paths.LETTER_WRITE,
      page: () => const LetterWriteView(),
      binding: LetterWriteBinding(),
    ),
    GetPage(
      name: _Paths.LETTER_TAKE,
      page: () => const LetterTakeView(),
      binding: LetterTakeBinding(),
    ),
    GetPage(
      name: _Paths.BOOK_SHELF,
      page: () => const BookShelfView(),
      binding: BookShelfBinding(),
    ),
  ];
}
