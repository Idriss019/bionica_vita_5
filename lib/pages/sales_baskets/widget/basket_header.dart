import 'package:bionica_vita_5/globalWidgets/global_widgets.dart';
import 'package:flutter/material.dart';

class BasketHeader extends StatelessWidget {
  const BasketHeader({
    super.key,
    required this.gridHeight,
    required this.leftRightMargin,
    required this.textStyle,
    required this.colorLineBorder,
    required this.borderHeight,
  });

  final double gridHeight;
  final double leftRightMargin;
  final TextStyle textStyle;
  final Color colorLineBorder;
  final double borderHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: gridHeight,
      decoration: BoxDecoration(
        border: Border.all(color: colorLineBorder, width: 0.5),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: gridHeight,
            margin: EdgeInsets.only(
              left: leftRightMargin,
              top: 10,
              bottom: 10,
            ),
            child: Text('Корзина №', style: textStyle),
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
    );
  }
}
