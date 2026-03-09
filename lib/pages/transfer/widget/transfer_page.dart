import 'package:flutter/material.dart';

import 'header_widget.dart';
import 'table_widget.dart';
import 'header2_widget.dart';
import 'table2_widget.dart';
import 'button_widget.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

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

    return SingleChildScrollView(
      child: Container(
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
              colorLineBorder: colorLineBorder,
            ),
            TableWidget(
              gridHeight: gridHeight,
              colorLineBorder: colorLineBorder,
            ),
            Header2Widget(
              gridHeight: gridHeight,
              colorLineBorder: colorLineBorder,
            ),
            Table2Widget(
              gridHeight: gridHeight,
              colorLineBorder: colorLineBorder,
            ),
            ButtonWidget(
              gridHeight: gridHeight,
              textStyle: textStyle,
              colorLineBorder: colorLineBorder,
            ),
          ],
        ),
      ),
    );
  }
}
