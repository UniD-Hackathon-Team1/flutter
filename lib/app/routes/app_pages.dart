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
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/ocean/bindings/ocean_binding.dart';
import '../modules/ocean/views/ocean_view.dart';
import '../modules/viewletter/bindings/viewletter_binding.dart';
import '../modules/viewletter/views/viewletter_view.dart';
import '../modules/viewrandomletter/bindings/viewrandomletter_binding.dart';
import '../modules/viewrandomletter/views/viewrandomletter_view.dart';
import '../modules/viewreviewletter/bindings/viewreviewletter_binding.dart';
import '../modules/viewreviewletter/views/viewreviewletter_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.OCEAN;

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
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.VIEWLETTER,
      page: () => const ViewletterView(),
      binding: ViewletterBinding(),
    ),
    GetPage(
      name: _Paths.VIEWREVIEWLETTER,
      page: () => const ViewreviewletterView(),
      binding: ViewreviewletterBinding(),
    ),
    GetPage(
      name: _Paths.VIEWRANDOMLETTER,
      page: () => const ViewrandomletterView(),
      binding: ViewrandomletterBinding(),
    ),
  ];
}
