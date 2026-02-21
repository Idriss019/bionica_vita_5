import 'package:bionica_vita_5/globalWidgets/global_widgets.dart';
import 'package:flutter/material.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
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
      child: Row(
        children: [
          Expanded(
            // flex: 7,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: leftRightMargin),
                  child: Text(
                    'Название',
                    style: textStyle.copyWith(fontSize: 20),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 140,
                    margin: EdgeInsets.only(
                      left: leftRightMargin,
                      // right: leftRightMargin,
                    ),
                    height: borderHeight,
                    child: TextFieldCustom(textStyle: textStyle),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            // flex: 5,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: leftRightMargin),
                  child: Text(
                    'Штрих-код',
                    style: textStyle.copyWith(fontSize: 20),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 140,
                    margin: EdgeInsets.only(
                      left: leftRightMargin,
                      right: leftRightMargin,
                    ),
                    height: borderHeight,
                    child: TextFieldCustom(textStyle: textStyle),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Container(
                    margin: EdgeInsets.only(right: leftRightMargin),
                    height: double.infinity,
                    width: 50,
                    child: CustomButton(
                      text: '+',
                      textStyle: textStyle.copyWith(
                        fontSize: 30,
                        // fontWeight: FontWeight.w500,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
