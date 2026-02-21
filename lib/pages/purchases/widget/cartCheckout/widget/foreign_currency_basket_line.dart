import 'package:bionica_vita_5/globalWidgets/global_widgets.dart';
import 'package:flutter/material.dart';

class ForeignCurrencyBasketWidget extends StatelessWidget {
  const ForeignCurrencyBasketWidget({
    super.key,
    required this.gridHeight,
    required this.leftRightMargin,
    required this.borderHeight,
    required this.textStyle,
    required this.colorLineBorder,
  });

  final double gridHeight;
  final double leftRightMargin;
  final double borderHeight;
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
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: leftRightMargin),
                    child: Text(
                      'Корзина в ин. валюте',
                      style: textStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  margin: EdgeInsets.only(
                    // left: leftRightMargin,
                    // right: leftRightMargin,
                  ),
                  height: borderHeight,
                  child: TextFieldCustom(textStyle: textStyle),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: leftRightMargin),
                    child: Text(
                      'Корзина в рублях',
                      style: textStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  margin: EdgeInsets.only(
                    left: leftRightMargin,
                    // right: leftRightMargin,
                  ),
                  height: borderHeight,
                  child: TextFieldCustom(textStyle: textStyle),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: leftRightMargin),
                    child: Text(
                      'Курс',
                      style: textStyle.copyWith(fontSize: 24),
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  margin: EdgeInsets.only(
                    left: leftRightMargin,
                    right: leftRightMargin,
                  ),
                  height: borderHeight,
                  child: TextFieldCustom(textStyle: textStyle),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
