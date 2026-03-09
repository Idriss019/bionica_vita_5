import 'package:flutter/material.dart';

class BasketSecondHeader extends StatelessWidget {
  const BasketSecondHeader({
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
                    'Дата :',
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
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Итого :',
                      style: textStyle.copyWith(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                Container(
                  width: 100,
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
                    'Описание :',
                    style: textStyle.copyWith(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: 150,
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
