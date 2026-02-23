import 'package:bionica_vita_5/pages/purchases/widget/bringingParcel/widget/bottom_buttons_line_widget.dart';
import 'package:bionica_vita_5/pages/purchases/widget/bringingParcel/widget/depositing_into_storage_line_widget.dart';
import 'package:bionica_vita_5/pages/purchases/widget/bringingParcel/widget/header_line.dart';
import 'package:bionica_vita_5/pages/purchases/widget/bringingParcel/widget/package_inside_line_widget.dart';
import 'package:bionica_vita_5/pages/purchases/widget/bringingParcel/widget/parcel_line_widget.dart';
import 'package:bionica_vita_5/pages/purchases/widget/bringingParcel/widget/table_baskets_line_widget.dart';
import 'package:bionica_vita_5/pages/purchases/widget/bringingParcel/widget/table_depositing_into_storage_line_widget.dart';
import 'package:bionica_vita_5/pages/purchases/widget/bringingParcel/widget/table_package_inside_line_widget.dart';
import 'package:flutter/material.dart';

class BringingParcelPage extends StatelessWidget {
  const BringingParcelPage({super.key});

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
            ParcelLineWidget(
              gridHeight: gridHeight,
              leftRightMargin: leftRightMargin,
              textStyle: textStyle,
              colorLineBorder: colorLineBorder,
            ),
            TableBasketsLineWidget(
              gridHeight: gridHeight,
              colorLineBorder: colorLineBorder,
            ),
            PackageInsideLineWidget(
              gridHeight: gridHeight,
              leftRightMargin: leftRightMargin,
              textStyle: textStyle,
              colorLineBorder: colorLineBorder,
            ),
            TablePackageInsideLineWidget(
              gridHeight: gridHeight,
              colorLineBorder: colorLineBorder,
            ),
            DepositingIntoStorageLineWidget(
              gridHeight: gridHeight,
              leftRightMargin: leftRightMargin,
              textStyle: textStyle,
              colorLineBorder: colorLineBorder,
            ),
            TableDepositingIntoStorageLineWidget(
              gridHeight: gridHeight,
              colorLineBorder: colorLineBorder,
            ),
            BottomButtonsLineWidget(
              gridHeight: gridHeight,
              leftRightMargin: leftRightMargin,
              textStyle: textStyle,
              colorLineBorder: colorLineBorder,
            ),
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
            //         child: Text('Поиск посылки', style: textStyle),
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
      ),
    );
  }
}
