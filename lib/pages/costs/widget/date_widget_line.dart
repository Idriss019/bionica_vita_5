import 'package:bionica_vita_5/globalWidgets/global_widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateWidgetLine extends StatelessWidget {
  const DateWidgetLine({
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
            height: gridHeight,
            margin: EdgeInsets.only(
              left: leftRightMargin,
              top: 10,
              bottom: 10,
            ),
            child: CustomButton(
              text: DateFormat('dd.MM').format(DateTime.now()),
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
            child: Text('Расход :', style: textStyle),
          ),
          Expanded(
            child: Container(
              // width: 400,
              margin: EdgeInsets.only(
                left: leftRightMargin,
                // right: leftRightMargin,
              ),
              height: borderHeight,
              child: TextFieldCustom(textStyle: textStyle),
            ),
          ),
          Container(
            width: 90,
            margin: EdgeInsets.only(left: leftRightMargin),
            height: borderHeight,
            child: TextFieldCustom(
              textStyle: textStyle.copyWith(fontSize: 16),
              labelText: 'дебит',
            ),
          ),
          Container(
            width: 90,
            margin: EdgeInsets.only(
              left: leftRightMargin,
              right: leftRightMargin,
            ),
            height: borderHeight,
            child: TextFieldCustom(
              textStyle: textStyle.copyWith(fontSize: 16),
              labelText: 'кредит',
            ),
          ),
        ],
      ),
    );
  }
}
