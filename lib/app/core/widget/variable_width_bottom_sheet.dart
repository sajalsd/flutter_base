import 'package:flutter/material.dart';
import 'package:flutter_base/app/core/values/app_values.dart';

class VariableWidthBottomSheet extends StatelessWidget {
  final Widget child;
  final double widthOfSheet;
  final EdgeInsetsGeometry padding;
  final AlignmentGeometry align;
  final Color bgColor;

  const VariableWidthBottomSheet({
    Key? key,
    required this.widthOfSheet,
    required this.child,
    this.padding = const EdgeInsets.all(AppValues.margin),
    this.align = Alignment.bottomRight,
    this.bgColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: padding,
        color: Colors.transparent,
        child: Align(
          alignment: align,
          child: Container(
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: const BorderRadius.all(Radius.circular(AppValues.radius)),
            ),
            padding: const EdgeInsets.all(AppValues.smallPadding),
            width: widthOfSheet,
            child: child,
          ),
        ),
      ),
    );
  }
}
