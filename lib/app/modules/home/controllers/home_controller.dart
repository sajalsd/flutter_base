import 'package:flutter_base/app/core/controllers/base_controller.dart';
import 'package:get/get.dart';

class HomeController extends BaseController {
  final _count = 0.obs;
  get count => _count.value;

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  void increment() => _count.value++;
}
