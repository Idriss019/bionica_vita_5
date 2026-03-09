import 'package:bionica_vita_5/globalWidgets/global_widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Date2WidgetLine extends StatelessWidget {
  const Date2WidgetLine({
    super.key,
    required this.gridHeight,
    required this.leftRightMargin,
    required this.textStyle,
    required this.colorLineBorder,
    required this.borderHeight,
    required this.onDateChanged,
  });

  final double gridHeight;
  final double leftRightMargin;
  final TextStyle textStyle;
  final Color colorLineBorder;
  final double borderHeight;
  final Function(int) onDateChanged;

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
          Container(
            margin: EdgeInsets.only(left: leftRightMargin),
            child: Text('От :', style: textStyle),
          ),
          Container(
            height: gridHeight,
            margin: EdgeInsets.only(
              left: leftRightMargin,
              top: 10,
              bottom: 10,
            ),
            child: CustomButton(
              text: DateFormat('dd.MM.yyyy').format(DateTime.now()),
              textStyle: textStyle,
              onPressed: () async {
                final initialDate = DateTime.now();
                final picked = await showDatePicker(
                  context: context,
                  initialDate: initialDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );

                if (picked == null) {
                  return;
                }
                onDateChanged(picked.millisecondsSinceEpoch);
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: leftRightMargin),
            child: Text('До :', style: textStyle),
          ),
          Container(
            height: gridHeight,
            margin: EdgeInsets.only(
              left: leftRightMargin,
              top: 10,
              bottom: 10,
            ),
            child: CustomButton(
              text: DateFormat('dd.MM.yyyy').format(DateTime.now()),
              textStyle: textStyle,
              onPressed: () async {
                final initialDate = DateTime.now();
                final picked = await showDatePicker(
                  context: context,
                  initialDate: initialDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );

                if (picked == null) {
                  return;
                }
                onDateChanged(picked.millisecondsSinceEpoch);
              },
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: leftRightMargin),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text('Результат =', style: textStyle),
              ),
            ),
          ),
          // Expanded(
          //   child: Container(
          //     // width: 400,
          //     margin: EdgeInsets.only(
          //       left: leftRightMargin,
          //       // right: leftRightMargin,
          //     ),
          //     height: borderHeight,
          //     child: TextFieldCustom(textStyle: textStyle),
          //   ),
          // ),
          Container(
            width: 180 + leftRightMargin,
            margin: EdgeInsets.only(
              left: leftRightMargin,
              right: leftRightMargin,
            ),
            height: borderHeight,
            child: TextFieldCustomWithOutline(
              textStyle: textStyle.copyWith(fontSize: 16),
              labelText: 'результат',
            ),
          ),
        ],
      ),
    );
  }
}
