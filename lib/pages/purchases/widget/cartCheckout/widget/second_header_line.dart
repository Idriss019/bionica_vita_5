import 'package:flutter/material.dart';

class SecondHeaderWidget extends StatelessWidget {
  const SecondHeaderWidget({
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
      height: gridHeight - 15,
      decoration: BoxDecoration(
        border: Border.all(color: colorLineBorder, width: 0.5),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: leftRightMargin),
        child: Center(
          child: Text(
            '⬇ Товар ⬇',
            style: textStyle.copyWith(fontSize: 28),
          ),
        ),
      ),
    );
  }
}
