import 'package:flutter/material.dart';
import 'header_line.dart';
import 'foreign_currency_basket_line.dart';
import 'commission_line.dart';
import 'second_header_line.dart';
import 'name_line.dart';
import 'price_foreign_currency_line.dart';
import 'table_line.dart';
import 'bottom_buttons_line.dart';

class CartCheckoutPage extends StatelessWidget {
  const CartCheckoutPage({super.key});

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
              textStyle: textStyle,
              colorLineBorder: colorLineBorder,
            ),
            ForeignCurrencyBasketWidget(
              gridHeight: gridHeight,
              leftRightMargin: leftRightMargin,
              borderHeight: borderHeight,
              textStyle: textStyle,
              colorLineBorder: colorLineBorder,
            ),
            CommissionWidget(
              gridHeight: gridHeight,
              leftRightMargin: leftRightMargin,
              borderHeight: borderHeight,
              textStyle: textStyle,
              colorLineBorder: colorLineBorder,
            ),
            SecondHeaderWidget(
              gridHeight: gridHeight,
              leftRightMargin: leftRightMargin,
              textStyle: textStyle,
              colorLineBorder: colorLineBorder,
            ),
            NameWidget(
              gridHeight: gridHeight,
              leftRightMargin: leftRightMargin,
              borderHeight: borderHeight,
              textStyle: textStyle,
              colorLineBorder: colorLineBorder,
            ),
            PriceForeignCurrencyWidget(
              gridHeight: gridHeight,
              leftRightMargin: leftRightMargin,
              borderHeight: borderHeight,
              textStyle: textStyle,
              colorLineBorder: colorLineBorder,
            ),
            TableWidget(
              gridHeight: gridHeight,
              colorLineBorder: colorLineBorder,
            ),
            BottomButtonsWidget(
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

/* 
таблица продуктов   = штрих код, название, граммы, объем,  цена в ин валюте
сумма цены продуктов в ин валюте

= кнопка внести
*/
