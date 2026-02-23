import 'package:flutter/material.dart';

class BasketDeliveryLine extends StatelessWidget {
  const BasketDeliveryLine({
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
      child: Center(
        child: Container(
          margin: EdgeInsets.only(left: leftRightMargin),
          child: Text('⬇ Корзина заказа ⬇', style: textStyle),
        ),
      ),
    );
  }
}
