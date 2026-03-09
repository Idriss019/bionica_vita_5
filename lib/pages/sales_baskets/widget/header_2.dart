import 'package:flutter/material.dart';

class Header2 extends StatelessWidget {
  const Header2({
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
          Container(
            height: gridHeight,
            margin: EdgeInsets.only(
              // left: leftRightMargin,
              top: 10,
              bottom: 10,
            ),
            child: Icon(Icons.arrow_upward),
          ),
          Container(
            height: gridHeight,
            margin: EdgeInsets.only(
              left: leftRightMargin,
              top: 10,
              bottom: 10,
            ),
            child: Text('Добавить продукт', style: textStyle),
          ),
          Container(
            height: gridHeight,
            margin: EdgeInsets.only(
              left: leftRightMargin,
              top: 10,
              bottom: 10,
            ),
            child: Icon(Icons.arrow_upward),
          ),
        ],
      ),
    );
  }
}
