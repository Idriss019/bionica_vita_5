import 'package:flutter/material.dart';
import 'header_line_widget.dart';
import 'table_baskets_line_widget.dart';
import 'delivery_line_widget.dart';
import 'button_line_widget.dart';

class DeliveryCostsPage extends StatelessWidget {
  const DeliveryCostsPage({super.key});

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
          HeaderLineWidget(
            gridHeight: gridHeight,
            leftRightMargin: leftRightMargin,
            textStyle: textStyle,
            colorLineBorder: colorLineBorder,
          ),
          TableBasketsLineWidget(
            gridHeight: gridHeight,
            leftRightMargin: leftRightMargin,
            textStyle: textStyle,
            colorLineBorder: colorLineBorder,
          ),
          DeliveryLineWidget(
            gridHeight: gridHeight,
            leftRightMargin: leftRightMargin,
            borderHeight: borderHeight,
            textStyle: textStyle,
            colorLineBorder: colorLineBorder,
          ),
          ButtonLineWidget(
            gridHeight: gridHeight,
            textStyle: textStyle,
            colorLineBorder: colorLineBorder,
          ),
        ],
      ),
    );
  }
}
