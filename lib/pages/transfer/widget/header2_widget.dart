import 'package:flutter/material.dart';

class Header2Widget extends StatelessWidget {
  const Header2Widget({
    super.key,
    required this.gridHeight,
    required this.colorLineBorder,
  });

  final double gridHeight;
  final Color colorLineBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: gridHeight,
      decoration: BoxDecoration(
        border: Border.all(color: colorLineBorder, width: 0.5),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Center(
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
    );
  }
}
