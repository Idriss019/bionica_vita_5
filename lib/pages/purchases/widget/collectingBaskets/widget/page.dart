import 'package:bionica_vita_5/pages/purchases/widget/collectingBaskets/widget/basket_delivery_line.dart';
import 'package:bionica_vita_5/pages/purchases/widget/collectingBaskets/widget/bottom_buttons_line.dart';
import 'package:bionica_vita_5/pages/purchases/widget/collectingBaskets/widget/table_basket_delivery_line.dart';
import 'package:bionica_vita_5/pages/purchases/widget/collectingBaskets/widget/table_baskets_line.dart';
import 'package:bionica_vita_5/pages/purchases/widget/collectingBaskets/widget/header_line.dart';
import 'package:flutter/material.dart';

class CollectingBasketsPage extends StatelessWidget {
  const CollectingBasketsPage({super.key});

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
            //             Container(
            //               width: 150,
            //               margin: EdgeInsets.only(left: leftRightMargin),
            //               child: Text(
            //                 'Доставка транс. компании',
            //                 style: textStyle.copyWith(fontSize: 16),
            //               ),
            //             ),
            //             Container(
            //               width: 160,
            //               margin: EdgeInsets.only(
            //                 left: leftRightMargin,
            //                 // right: leftRightMargin,
            //               ),
            //               height: borderHeight,
            //               child: TextFieldCustom(textStyle: textStyle),
            //             ),
            //             Expanded(
            //               child: Container(
            //                 width: 100,
            //                 height: gridHeight,
            //                 margin: EdgeInsets.only(
            //                   left: leftRightMargin,
            //                   // right: leftRightMargin,
            //                   top: 10,
            //                   bottom: 10,
            //                 ),
            //                 child: DropdownMenu<String>(
            //                   initialSelection: 'Вариант 1',
            //                   label: const Text('Величина'),
            //                   dropdownMenuEntries: <DropdownMenuEntry<String>>[
            //                     DropdownMenuEntry(value: '1', label: 'КГ'),
            //                     DropdownMenuEntry(value: '2', label: 'СМ'),
            //                     DropdownMenuEntry(value: '3', label: 'Цена'),
            //                   ],
            //                   onSelected: (String? value) {
            //                     print('Выбрано: $value');
            //                   },
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),

            //       Expanded(
            //         child: Row(
            //           children: [
            //             Expanded(
            //               child: Container(
            //                 margin: EdgeInsets.only(left: leftRightMargin),
            //                 child: Text(
            //                   'Доп. расход на дорогу',
            //                   style: textStyle.copyWith(fontSize: 16),
            //                 ),
            //               ),
            //             ),
            //             Expanded(
            //               child: Container(
            //                 margin: EdgeInsets.only(
            //                   // left: leftRightMargin,
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
            // /* Find */
            // Container(
            //   height: gridHeight,
            //   decoration: BoxDecoration(
            //     border: Border.all(color: colorLineBorder, width: 0.5),
            //     borderRadius: BorderRadius.all(Radius.circular(10)),
            //   ),
            //   child: Row(
            //     children: [
            //       Container(
            //         margin: EdgeInsets.only(left: leftRightMargin),
            //         child: Text('Поиск корзины', style: textStyle),
            //       ),
            //       Expanded(
            //         child: Container(
            //           margin: EdgeInsets.only(
            //             left: leftRightMargin,
            //             right: leftRightMargin,
            //           ),
            //           height: borderHeight,
            //           child: TextFieldCustom(textStyle: textStyle),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            TableBasketsLine(
              gridHeight: gridHeight,
              leftRightMargin: leftRightMargin,
              borderHeight: borderHeight,
              textStyle: textStyle,
              colorLineBorder: colorLineBorder,
            ),
            BasketDeliveryLine(
              gridHeight: gridHeight,
              leftRightMargin: leftRightMargin,
              borderHeight: borderHeight,
              textStyle: textStyle,
              colorLineBorder: colorLineBorder,
            ),
            TableBasketDeliveryLine(
              gridHeight: gridHeight,
              leftRightMargin: leftRightMargin,
              borderHeight: borderHeight,
              textStyle: textStyle,
              colorLineBorder: colorLineBorder,
            ),
            BottomButtonsLine(
              gridHeight: gridHeight,
              leftRightMargin: leftRightMargin,
              borderHeight: borderHeight,
              textStyle: textStyle,
              colorLineBorder: colorLineBorder,
            ),
            //     width: 600,
            //     child: CustomButton(
            //       text: 'Оформить посылку',
            //       textStyle: textStyle,
            //       onPressed: () {},
            //     ),
            //   ),
            // ),
            // NameWidget(
            //   gridHeight: gridHeight, 'Оформить посылку'
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
      ),
    );
  }
}
