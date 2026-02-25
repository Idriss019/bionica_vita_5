import 'package:bionica_vita_5/globalWidgets/global_widgets.dart';
import 'package:flutter/material.dart';

class NameWidgetLine extends StatelessWidget {
  const NameWidgetLine({
    super.key,
    required this.gridHeight,
    required this.leftRightMargin,
    required this.textStyle,
    required this.colorLineBorder,
  });

  final double gridHeight;
  final double leftRightMargin;
  final TextStyle textStyle;
  final Color colorLineBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: gridHeight,
      decoration: BoxDecoration(
        border: Border.all(color: colorLineBorder, width: 0.5),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: leftRightMargin),
            child: Text('Название :', style: textStyle),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                left: leftRightMargin,
                right: leftRightMargin * 2,
              ),
              height: 50,
              child: TextFieldCustomWithOutline(textStyle: textStyle),
            ),
          ),
        ],
      ),
    );
  }
}
