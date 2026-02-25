import 'package:bionica_vita_5/globalWidgets/global_widgets.dart';
import 'package:flutter/material.dart';

class InputExpirationDateLineWidget extends StatelessWidget {
  const InputExpirationDateLineWidget({
    super.key,
    required this.gridHeight,
    required this.leftRightMargin,
    required this.textStyle,
    required this.colorLineBorder,
    required this.onDateChanged,
  });

  final double gridHeight;
  final double leftRightMargin;
  final TextStyle textStyle;
  final Color colorLineBorder;
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
              text: DateTime.now().toString().substring(0, 10),
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
            child: Text('Поиск и ввод', style: textStyle),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                left: leftRightMargin,
                right: leftRightMargin,
              ),
              height: 50,
              child: TextFieldCustom(textStyle: textStyle),
            ),
          ),
        ],
      ),
    );
  }
}
