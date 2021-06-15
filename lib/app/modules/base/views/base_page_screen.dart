import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BasePageScreen<Controller extends GetxController> extends GetView<Controller>{
  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  void onClickBackButton(){
    Get.back();
  }

  Function retryFunctionOnNoNetwork() {
    return () {};
  }
}