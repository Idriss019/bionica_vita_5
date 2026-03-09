import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.gridHeight,
    required this.leftRightMargin,
    required this.colorLineBorder,
  });

  final double gridHeight;
  final double leftRightMargin;
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
            height: gridHeight,
            margin: EdgeInsets.only(
              // left: leftRightMargin,
              top: 10,
              bottom: 10,
            ),
            child: Icon(Icons.arrow_downward),
          ),
          Container(
            height: gridHeight,
            margin: EdgeInsets.only(
              left: leftRightMargin,
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
          Container(
            height: gridHeight,
            margin: EdgeInsets.only(
              left: leftRightMargin,
              top: 10,
              bottom: 10,
            ),
            child: Icon(Icons.arrow_downward),
          ),
        ],
      ),
    );
  }
}
