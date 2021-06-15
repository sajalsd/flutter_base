import 'package:flutter/material.dart';
import 'package:flutter_base/app/core/widget/center_text.dart';
import 'package:flutter_base/app/modules/base/views/base_page_screen.dart';
import 'package:flutter_base/app/modules/base/views/base_screen.dart';
import 'package:flutter_base/app/modules/other/controllers/other_controller.dart';

class OtherView extends BasePageScreen<OtherController> with BaseScreen {

  @override
  Widget appBar() {
    return AppBar(
      title: const Text('OtherView'),
      centerTitle: true,
    );
  }

  @override
  Widget body() {
    return const CenterText(text: "Other view");
  }
}
