import 'package:bionica_vita_5/globalWidgets/global_widgets.dart';
import 'package:flutter/material.dart';

class CommissionWidget extends StatelessWidget {
  const CommissionWidget({
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
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: leftRightMargin),
                    child: Text(
                      'Комиссия',
                      style: textStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  margin: EdgeInsets.only(
                    left: leftRightMargin,
                    // right: leftRightMargin,
                  ),
                  height: borderHeight,
                  child: TextFieldCustom(textStyle: textStyle),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: leftRightMargin),
                    child: Text(
                      'Доставка',
                      style: textStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  margin: EdgeInsets.only(
                    left: leftRightMargin,
                    // right: leftRightMargin,
                  ),
                  height: borderHeight,
                  child: TextFieldCustom(textStyle: textStyle),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: gridHeight,
              margin: EdgeInsets.only(
                left: leftRightMargin,
                right: leftRightMargin,
                top: 10,
                bottom: 10,
              ),
              child: DropdownMenu<String>(
                initialSelection: 'Вариант 1',
                label: const Text('Величина'),
                dropdownMenuEntries: <DropdownMenuEntry<String>>[
                  DropdownMenuEntry(value: '1', label: 'КГ'),
                  DropdownMenuEntry(value: '2', label: 'СМ'),
                  DropdownMenuEntry(value: '3', label: 'Цена'),
                ],
                onSelected: (String? value) {
                  print('Выбрано: $value');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
