import 'package:flutter/material.dart';
import 'package:flutter_base/app/core/values/app_colors.dart';
import 'package:flutter_base/app/core/view/base_page_screen.dart';
import 'package:get/get.dart';

mixin BaseScreen<Controller extends GetxController> on BasePageScreen<Controller> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: pageBackgroundColor(),
          key: globalKey,
          appBar: appBar(),
          floatingActionButton: floatingActionButton(),
          body: SafeArea(
            child: body(),
          ),
          bottomNavigationBar: bottomNavigationBar(),
          drawer: drawer(),
        ),
        // _loadingWidgets(),
        // Container(),
      ],
    );
  }

  Widget body();

  PreferredSizeWidget appBar();

  Color pageBackgroundColor(){
    return AppColors.pageBackground;
  }

  Widget floatingActionButton(){
    return Container();
  }

  Widget? bottomNavigationBar(){
    return null;
  }

  Widget? drawer() {
    return null;
  }

}