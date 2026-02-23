import 'package:flutter/material.dart';

class HeaderLineWidget extends StatelessWidget {
  final double gridHeight;
  final double leftRightMargin;
  final TextStyle textStyle;
  final Color colorLineBorder;

  const HeaderLineWidget({
    super.key,
    required this.gridHeight,
    required this.leftRightMargin,
    required this.textStyle,
    required this.colorLineBorder,
  });

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
          child: Text('Расходы на доставку', style: textStyle),
        ),
      ),
    );
  }
}
