import 'package:bionica_vita_5/globalWidgets/global_widgets.dart';
// import 'package:bionica_vita_5/pages/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PurchasesPage extends StatelessWidget {
  const PurchasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    const double gridHeight = 70;
    // const double leftRightMargin = 15;
    // const double borderHeight = 50;
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
            margin: EdgeInsets.only(bottom: 6),
            decoration: BoxDecoration(
              border: Border.all(color: colorLineBorder, width: 0.5),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: SizedBox(
              // padding: EdgeInsets.only(bottom: 8),
              height: double.infinity,
              width: double.infinity,
              child: CustomButton(
                text: 'Оформление корзины',
                textStyle: textStyle,
                onPressed: () => context.go('/purchases/cart_checkout'),
              ),
            ),
          ),
          Container(
            height: gridHeight,
            margin: EdgeInsets.only(bottom: 6),
            decoration: BoxDecoration(
              border: Border.all(color: colorLineBorder, width: 0.5),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: SizedBox(
              // margin: EdgeInsets.only(right: 8),
              height: double.infinity,
              width: double.infinity,
              child: CustomButton(
                text: 'Сбор и отправка корзин',
                textStyle: textStyle,
                onPressed: () => context.go('/purchases/collecting_baskets'),
              ),
            ),
          ),
          Container(
            height: gridHeight,
            margin: EdgeInsets.only(bottom: 6),
            decoration: BoxDecoration(
              border: Border.all(color: colorLineBorder, width: 0.5),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: SizedBox(
              // margin: EdgeInsets.only(right: 8),
              height: double.infinity,
              width: double.infinity,
              child: CustomButton(
                text: 'Внесение посылки',
                textStyle: textStyle,
                onPressed: () => context.go('/purchases/bringing_parcel'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
