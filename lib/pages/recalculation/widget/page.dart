import 'package:flutter/material.dart';

import 'storage_widget_line.dart';
import 'search_widget_line.dart';
import 'barcode_widget_line.dart';
import 'name_widget_line.dart';
import 'count_widget_line.dart';
import 'cancel_widget_line.dart';
import 'table_widget_line.dart';
import 'reset_widget_line.dart';

class RecalculationPage extends StatelessWidget {
  const RecalculationPage({super.key});

  @override
  Widget build(BuildContext context) {
    const double gridHeight = 70;
    const double leftRightMargin = 15;
    const TextStyle textStyle = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 25,
    );

    const Color colorLineBorder = Color.fromARGB(150, 112, 110, 0);
    int myDate = 0;
    dynamic Function(int) onDateChanged(int date) {
      return (int date) {
        myDate = date;
      };
    }

    return Container(
      margin: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
      decoration: BoxDecoration(
        border: Border.all(color: colorLineBorder, width: 0.5),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          StorageWidgetLine(
            gridHeight: gridHeight,
            leftRightMargin: leftRightMargin,
            textStyle: textStyle,
            colorLineBorder: colorLineBorder,
            onDateChanged: onDateChanged,
          ),
          SearchWidgetLine(
            gridHeight: gridHeight,
            leftRightMargin: leftRightMargin,
            textStyle: textStyle,
            colorLineBorder: colorLineBorder,
          ),
          BarcodeWidgetLine(
            gridHeight: gridHeight,
            leftRightMargin: leftRightMargin,
            textStyle: textStyle,
            colorLineBorder: colorLineBorder,
          ),
          NameWidgetLine(
            gridHeight: gridHeight,
            leftRightMargin: leftRightMargin,
            textStyle: textStyle,
            colorLineBorder: colorLineBorder,
          ),
          CountWidgetLine(
            gridHeight: gridHeight,
            leftRightMargin: leftRightMargin,
            textStyle: textStyle,
            colorLineBorder: colorLineBorder,
          ),
          CancelWidgetLine(
            gridHeight: gridHeight,
            textStyle: textStyle,
            colorLineBorder: colorLineBorder,
          ),
          TableWidgetLine(
            gridHeight: gridHeight,
            colorLineBorder: colorLineBorder,
          ),
          ResetWidgetLine(
            gridHeight: gridHeight,
            textStyle: textStyle,
            colorLineBorder: colorLineBorder,
          ),
        ],
      ),
    );
  }
}
