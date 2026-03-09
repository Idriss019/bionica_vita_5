import 'package:flutter/material.dart';

import 'header_widget.dart';
import 'date_widget_line.dart';
import 'send_button_widget.dart';
import 'header2_widget.dart';
import 'date2_widget_line.dart';
import 'filter_widget_line.dart';
import 'table_widget.dart';

class DebtsPage extends StatelessWidget {
  const DebtsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const double gridHeight = 70;
    const double leftRightMargin = 15;
    const double borderHeight = 50;
    const TextStyle textStyle = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 25,
    );
    const Color colorLineBorder = Color.fromARGB(150, 112, 110, 0);

    return Container(
      margin: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
      decoration: BoxDecoration(
        border: Border.all(color: colorLineBorder, width: 0.5),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          HeaderWidget(
            gridHeight: gridHeight,
            leftRightMargin: leftRightMargin,
            textStyle: textStyle,
            colorLineBorder: colorLineBorder,
          ),
          DateWidgetLine(
            gridHeight: gridHeight,
            leftRightMargin: leftRightMargin,
            textStyle: textStyle,
            colorLineBorder: colorLineBorder,
            borderHeight: borderHeight,
            onDateChanged: (int date) {},
          ),
          SendButtonWidget(
            gridHeight: gridHeight,
            textStyle: textStyle,
            colorLineBorder: colorLineBorder,
          ),
          Header2Widget(
            gridHeight: gridHeight,
            leftRightMargin: leftRightMargin,
            textStyle: textStyle,
            colorLineBorder: colorLineBorder,
          ),
          Date2WidgetLine(
            gridHeight: gridHeight,
            leftRightMargin: leftRightMargin,
            textStyle: textStyle,
            colorLineBorder: colorLineBorder,
            borderHeight: borderHeight,
            onDateChanged: (int date) {},
          ),
          FilterWidgetLine(
            gridHeight: gridHeight,
            leftRightMargin: leftRightMargin,
            textStyle: textStyle,
            colorLineBorder: colorLineBorder,
            borderHeight: borderHeight,
          ),
          TableWidget(gridHeight: gridHeight, colorLineBorder: colorLineBorder),
        ],
      ),
    );
  }
}
