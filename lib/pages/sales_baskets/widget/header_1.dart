import 'package:flutter/material.dart';

class Header1 extends StatelessWidget {
  const Header1({
    super.key,
    required this.gridHeight,
    required this.leftRightMargin,
    required this.textStyle,
    required this.colorLineBorder,
  });

  final double gridHeight;
  final double leftRightMargin;
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Container(
          //   height: gridHeight,
          //   margin: EdgeInsets.only(
          //     // left: leftRightMargin,
          //     top: 10,
          //     bottom: 10,
          //   ),
          //   child: Icon(Icons.arrow_downward),
          // ),
          Container(
            height: gridHeight,
            margin: EdgeInsets.only(
              left: leftRightMargin,
              top: 10,
              bottom: 10,
            ),
            child: Text('Корзины продаж', style: textStyle),
          ),
          // Container(
          //   height: gridHeight,
          //   margin: EdgeInsets.only(
          //     left: leftRightMargin,
          //     top: 10,
          //     bottom: 10,
          //   ),
          //   child: Icon(Icons.arrow_downward),
          // ),
        ],
      ),
    );
  }
}
