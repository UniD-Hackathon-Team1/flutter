import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "아아아앙아",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
