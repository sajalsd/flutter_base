import 'package:flutter/material.dart';
import 'package:flutter_base/app/core/values/text_styles.dart';

class CenterText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  const CenterText({Key key, @required this.text, this.textStyle = centerTextStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Flexible(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Text(text,
                  textAlign: TextAlign.center,
                  style: textStyle),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
