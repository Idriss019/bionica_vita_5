import 'package:bionica_vita_5/globalWidgets/global_widgets.dart';
import 'package:flutter/material.dart';

class FilterWidgetLine extends StatelessWidget {
  const FilterWidgetLine({
    super.key,
    required this.gridHeight,
    required this.leftRightMargin,
    required this.textStyle,
    required this.colorLineBorder,
    required this.borderHeight,
  });

  final double gridHeight;
  final double leftRightMargin;
  final TextStyle textStyle;
  final Color colorLineBorder;
  final double borderHeight;

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
            child: Text('Фильтр :', style: textStyle),
          ),
          Expanded(
            child: Container(
              // width: 400,
              margin: EdgeInsets.only(
                left: leftRightMargin,
                // right: leftRightMargin,
              ),
              height: borderHeight,
              child: TextFieldCustom(textStyle: textStyle),
            ),
          ),
          Container(
            width: 90,
            margin: EdgeInsets.only(left: leftRightMargin),
            height: borderHeight,
            child: TextFieldCustomWithOutline(
              textStyle: textStyle.copyWith(fontSize: 16),
              labelText: 'дебит',
            ),
          ),
          Container(
            width: 90,
            margin: EdgeInsets.only(
              left: leftRightMargin,
              right: leftRightMargin,
            ),
            height: borderHeight,
            child: TextFieldCustomWithOutline(
              textStyle: textStyle.copyWith(fontSize: 16),
              labelText: 'кредит',
            ),
          ),
        ],
      ),
    );
  }
}
