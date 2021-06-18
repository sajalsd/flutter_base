import 'package:flutter/material.dart';
import 'package:flutter_base/app/core/values/app_strings.dart';
import 'package:flutter_base/app/core/widget/center_text.dart';
import 'package:flutter_base/app/core/view/base_page_screen.dart';
import 'package:flutter_base/app/core/view/base_screen.dart';
import 'package:flutter_base/app/modules/home/controllers/home_controller.dart';
import 'package:flutter_base/app/routes/app_pages.dart';
import 'package:get/get.dart';

class HomeView extends BasePageScreen<HomeController> with BaseScreen {
  @override
  PreferredSizeWidget appBar() {
    return AppBar(
      title: const Text('HomeView'),
      centerTitle: true,
    );
  }

  @override
  Widget body() {
    return Obx(
      () => CenterText(
          text: "${AppString.homeText} \n Count: ${controller.count}"),
    );
  }

  @override
  Widget floatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        // controller.increment();
        Get.toNamed(Routes.OTHER);
      },
      child: const Icon(Icons.add),
    );
  }
}
