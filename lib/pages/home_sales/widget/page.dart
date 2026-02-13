
import 'package:bionica_vita_5/pages/home_sales/widget/barcode_line.dart';
import 'package:bionica_vita_5/pages/home_sales/widget/name_line.dart';
import 'package:bionica_vita_5/pages/home_sales/widget/purchase_price_line.dart';
import 'package:bionica_vita_5/pages/home_sales/widget/search_table_line.dart';
import 'package:bionica_vita_5/pages/home_sales/widget/second_header_line.dart';
import 'package:bionica_vita_5/pages/home_sales/widget/basket_table_line.dart';
import 'package:bionica_vita_5/pages/home_sales/widget/bottom_buttons_line.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int myDate = 0;
    const double gridHeight = 70;
    const double leftRightMargin = 15;
    const double borderHeight = 50;
    const TextStyle textStyle = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 25,
    );
    const Color colorLineBorder = Color.fromARGB(150, 112, 110, 0);

    // const EdgeInsets textLine = EdgeInsets.only(top: 0, bottom: 10, left: 10, right: 10);
    return Container(
      margin: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
      decoration: BoxDecoration(
        border: Border.all(color: colorLineBorder, width: 0.5),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),

      child: Column(
        children: [
          BarcodeWidget(
            gridHeight: gridHeight,
            leftRightMargin: leftRightMargin,
            borderHeight: borderHeight,
            textStyle: textStyle,
            colorLineBorder: colorLineBorder,
            onDateChanged: (int date) {
              myDate = date;
            },
          ),

          NameWidget(
            gridHeight: gridHeight,
            leftRightMargin: leftRightMargin,
            borderHeight: borderHeight,
            textStyle: textStyle,
            colorLineBorder: colorLineBorder,
          ),
          PurchasePriceWidget(
            gridHeight: gridHeight,
            leftRightMargin: leftRightMargin,
            borderHeight: borderHeight,
            textStyle: textStyle,
            colorLineBorder: colorLineBorder,
          ),
          // /* PriceWidget */
          // Container(
          //   height: gridHeight,
          //   decoration: BoxDecoration(
          //     border: Border.all(color: colorLineBorder, width: 0.5),
          //     borderRadius: BorderRadius.all(Radius.circular(10)),
          //   ),
          //   child: Row(
          //     children: [
          //       Expanded(
          //         child: Row(
          //           children: [
          //             Expanded(
          //               child: Container(
          //                 margin: EdgeInsets.only(left: leftRightMargin),
          //                 child: Text('Цена продажи', style: textStyle),
          //               ),
          //             ),
          //             Expanded(
          //               child: Container(
          //                 margin: EdgeInsets.only(left: leftRightMargin),
          //                 height: borderHeight,
          //                 child: TextFieldCustom(textStyle: textStyle),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //       Expanded(
          //         child: Row(
          //           children: [
          //             Container(
          //               margin: EdgeInsets.only(left: leftRightMargin),
          //               child: Text('Сумма', style: textStyle),
          //             ),
          //             Expanded(
          //               child: Container(
          //                 margin: EdgeInsets.only(
          //                   left: leftRightMargin,
          //                   right: leftRightMargin,
          //                 ),
          //                 height: borderHeight,
          //                 child: TextFieldCustom(textStyle: textStyle),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // /* InputButtonWidget */
          // Container(
          //   height: gridHeight,
          //   decoration: BoxDecoration(
          //     border: Border.all(color: colorLineBorder, width: 0.5),
          //     borderRadius: BorderRadius.all(Radius.circular(10)),
          //   ),
          //   child: Container(
          //     width: double.infinity,
          //     padding: EdgeInsets.only(
          //       top: 10,
          //       bottom: 10,
          //       left: 130,
          //       right: 130,
          //     ),
          //     child: CustomButton(text: 'Добавить', textStyle: textStyle),
          //   ),
          // ),
          SearchTableWidget(
            gridHeight: gridHeight,
            colorLineBorder: colorLineBorder,
          ),
          SecondHeaderWidget(
            gridHeight: gridHeight,
            leftRightMargin: leftRightMargin,
            textStyle: textStyle,
            colorLineBorder: colorLineBorder,
          ),
          BasketTableWidget(
            gridHeight: gridHeight,
            colorLineBorder: colorLineBorder,
          ),
          BottomButtonsWidget(
            gridHeight: gridHeight,
            leftRightMargin: leftRightMargin,
            textStyle: textStyle,
            colorLineBorder: colorLineBorder,
          ),
        ],
      ),
    );
  }
}


// class DecorationContainer extends StatelessWidget {
//   const DecorationContainer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: gridHeight,
//       margin: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: const Color.fromARGB(0, 112, 110, 0),
//           width: 0.5,
//         ),
//         borderRadius: BorderRadius.all(Radius.circular(10)),
//       ),
//     );
//   }
// }
