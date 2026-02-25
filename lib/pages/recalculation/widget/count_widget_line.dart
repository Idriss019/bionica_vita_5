import 'package:flutter/material.dart';

class CountWidgetLine extends StatelessWidget {
  const CountWidgetLine({
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
      height: gridHeight - 20,
      decoration: BoxDecoration(
        border: Border.all(color: colorLineBorder, width: 0.5),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: leftRightMargin),
                  child: Text(
                    'Подсчитано :',
                    style: textStyle.copyWith(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: gridHeight,
                  width: 70,
                  margin: EdgeInsets.only(
                    // left: leftRightMargin,
                    // right: leftRightMargin,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Align(child: Text('', style: textStyle)),
                ),
              ],
            ),
          ),
          SizedBox(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: leftRightMargin),
                  child: Text(
                    'Всего :',
                    style: textStyle.copyWith(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Container(
                  width: 70,
                  height: gridHeight,
                  margin: EdgeInsets.only(
                    // left: leftRightMargin,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Align(child: Text('', style: textStyle)),
                ),
              ],
            ),
          ),
          SizedBox(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: leftRightMargin),
                  child: Text(
                    'Осталось :',
                    style: textStyle.copyWith(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: 70,
                  height: gridHeight,
                  margin: EdgeInsets.only(
                    // left: leftRightMargin,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Align(child: Text('', style: textStyle)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
