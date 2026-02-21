import 'package:bionica_vita_5/globalWidgets/global_widgets.dart';
import 'package:flutter/material.dart';

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
          Container(
              height: gridHeight,
              decoration: BoxDecoration(
                border: Border.all(color: colorLineBorder, width: 0.5),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(left: leftRightMargin),
                  child: Text('Расходы на доставку', style: textStyle),
                ),
              ),
            ),
          /* Find */
          Container(
            height: gridHeight,
            decoration: BoxDecoration(
              border: Border.all(color: colorLineBorder, width: 0.5),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: leftRightMargin),
                  child: Text('Поиск посылки', style: textStyle),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: leftRightMargin,
                      right: leftRightMargin,
                    ),
                    height: borderHeight,
                    child: TextFieldCustom(textStyle: textStyle),
                  ),
                ),
              ],
            ),
          ),
          // NameWidget(
          //   gridHeight: gridHeight,
          //   leftRightMargin: leftRightMargin,
          //   borderHeight: borderHeight,
          //   textStyle: textStyle,
          //   colorLineBorder: colorLineBorder,
          // ),
          // PriceForeignCurrencyWidget(
          //   gridHeight: gridHeight,
          //   leftRightMargin: leftRightMargin,
          //   borderHeight: borderHeight,
          //   textStyle: textStyle,
          //   colorLineBorder: colorLineBorder,
          // ),
        ],
      ),
    );
  }
}