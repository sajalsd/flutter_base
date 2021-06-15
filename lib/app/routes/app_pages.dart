import 'package:get/get.dart';

import 'package:flutter_base/app/modules/home/bindings/home_binding.dart';
import 'package:flutter_base/app/modules/home/views/home_view.dart';
import 'package:flutter_base/app/modules/other/bindings/other_binding.dart';
import 'package:flutter_base/app/modules/other/views/other_view.dart';

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
      name: _Paths.OTHER,
      page: () => OtherView(),
      binding: OtherBinding(),
    ),
  ];
}
