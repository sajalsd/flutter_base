import 'package:flutter_base/app/core/model/page_state.dart';
import 'package:get/get.dart';

abstract class BaseController extends GetxController {
  final refreshController = false.obs;

  updateRefresh(bool refresh) => refreshController(refresh);

  final pageSateController = PageState.Default.obs;

  updatePageState(PageState state) => pageSateController(state);

  resetPageState() => pageSateController(PageState.Default);

  final messageController = ''.obs;

  updateMessage(String msg) => messageController(msg);

  final errorMessageController = ''.obs;

  updateErrorMessage(String msg) => errorMessageController(msg);

  final successMessageController = ''.obs;

  updateSuccessMessage(String msg) => errorMessageController(msg);

  // PageState getPageStateFromErrorType(DioErrorType errorType, String message) {
  //   print("Error type: $errorType , message: $message");
  //   //Add logic to return the page state based on dio error
  //   return PageState.Failed;
  // }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    messageController.close();
    refreshController.close();
    pageSateController.close();
    super.onClose();
  }

}
