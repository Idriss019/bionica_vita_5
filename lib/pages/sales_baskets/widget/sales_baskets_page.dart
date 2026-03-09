// import 'package:bionica_vita_5/globalWidgets/global_widgets.dart';
// import 'package:bionica_vita_5/pages/sales_baskets/widget/barcode_line.dart';
import 'package:bionica_vita_5/pages/sales_baskets/widget/find_widget_line.dart';
// import 'package:bionica_vita_5/pages/sales_baskets/widget/name_line.dart';
// import 'package:bionica_vita_5/pages/sales_baskets/widget/purchase_price_line.dart';
import 'package:bionica_vita_5/pages/sales_baskets/widget/search_table_line.dart';
import 'package:flutter/material.dart';

import 'header_1.dart';
import 'table_header.dart';
import 'basket_header.dart';
import 'basket_second_header.dart';
import 'basket_table.dart';
import 'header_2.dart';
import 'button_widget.dart';

class SalesBasketsPage extends StatelessWidget {
  const SalesBasketsPage({super.key});

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
            Header1(
              gridHeight: gridHeight,
              leftRightMargin: leftRightMargin,
              textStyle: textStyle,
              colorLineBorder: colorLineBorder,
            ),
            TableHeader(
              gridHeight: gridHeight,
              colorLineBorder: colorLineBorder,
            ),
            BasketHeader(
              gridHeight: gridHeight,
              leftRightMargin: leftRightMargin,
              textStyle: textStyle,
              colorLineBorder: colorLineBorder,
              borderHeight: borderHeight,
            ),
            BasketSecondHeader(
              gridHeight: gridHeight,
              leftRightMargin: leftRightMargin,
              textStyle: textStyle,
              colorLineBorder: colorLineBorder,
            ),
            BasketTable(
              gridHeight: gridHeight,
              colorLineBorder: colorLineBorder,
            ),
            Header2(
              gridHeight: gridHeight,
              leftRightMargin: leftRightMargin,
              textStyle: textStyle,
              colorLineBorder: colorLineBorder,
            ),
            FindWidget(
              gridHeight: gridHeight,
              leftRightMargin: leftRightMargin,
              borderHeight: borderHeight,
              textStyle: textStyle,
              colorLineBorder: colorLineBorder,
              onDateChanged: (int date) {},
            ),
            // BarcodeWidget(
            //   gridHeight: gridHeight,
            //   leftRightMargin: leftRightMargin,
            //   borderHeight: borderHeight,
            //   textStyle: textStyle,
            //   colorLineBorder: colorLineBorder,
            //   onDateChanged: (int date) {
            //     myDate = date;
            //   },
            // ),

            // NameWidget(
            //   gridHeight: gridHeight,
            //   leftRightMargin: leftRightMargin,
            //   borderHeight: borderHeight,
            //   textStyle: textStyle,
            //   colorLineBorder: colorLineBorder,
            // ),
            // PurchasePriceWidget(
            //   gridHeight: gridHeight,
            //   leftRightMargin: leftRightMargin,
            //   borderHeight: borderHeight,
            //   textStyle: textStyle,
            //   colorLineBorder: colorLineBorder,
            // ),
            SearchTableWidget(
              gridHeight: gridHeight,
              colorLineBorder: colorLineBorder,
            ),
            // Container(
            //   height: gridHeight,
            //   decoration: BoxDecoration(
            //     border: Border.all(color: colorLineBorder, width: 0.5),
            //     borderRadius: BorderRadius.all(Radius.circular(10)),
            //   ),
            //   child: Container(
            //     width: double.infinity,
            //     margin: EdgeInsets.only(
            //       left: 120,
            //       top: 10,
            //       bottom: 10,
            //       right: 120,
            //     ),
            //     child: CustomButton(
            //       text: 'Добавить',
            //       textStyle: textStyle,
            //       onPressed: () {},
            //     ),
            //   ),
            // ),
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
