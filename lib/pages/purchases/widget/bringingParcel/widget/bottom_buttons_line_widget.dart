import 'package:bionica_vita_5/globalWidgets/global_widgets.dart';
import 'package:flutter/material.dart';

class BottomButtonsLineWidget extends StatelessWidget {
  const BottomButtonsLineWidget({
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
            margin: EdgeInsets.only(left: 30, top: 10, bottom: 10),
            child: Container(
              margin: EdgeInsets.only(right: 8),
              height: double.infinity,
              width: 300,
              child: CustomButton(
                text: 'Внести в склад',
                textStyle: textStyle,
                onPressed: () {},
              ),
            ),
          ),
          Container(
            height: gridHeight,
            margin: EdgeInsets.only(
              left: leftRightMargin,
              right: leftRightMargin,
              top: 10,
              bottom: 10,
            ),
            child: DropdownMenu<String>(
              initialSelection: 'Вариант 1',
              label: const Text('Склад'),
              dropdownMenuEntries: <DropdownMenuEntry<String>>[
                DropdownMenuEntry(value: '1', label: 'Домашний'),
                DropdownMenuEntry(value: '2', label: 'Кизлярский'),
                DropdownMenuEntry(value: '3', label: 'Махачкалинский'),
              ],
              onSelected: (String? value) {
                print('Выбрано: $value');
              },
            ),
          ),
        ],
      ),
    );
  }
}
