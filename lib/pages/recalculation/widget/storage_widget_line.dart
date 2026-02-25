import 'package:bionica_vita_5/globalWidgets/global_widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class StorageWidgetLine extends StatelessWidget {
  const StorageWidgetLine({
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
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: leftRightMargin),
                    child: Text('Склад', style: textStyle),
                  ),
                ),
                Expanded(
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
                      label: const Text('Склад'),
                      dropdownMenuEntries: <DropdownMenuEntry<String>>[
                        DropdownMenuEntry(value: '1', label: 'Домашний'),
                        DropdownMenuEntry(
                          value: '2',
                          label: 'Кизлярский',
                        ),
                        DropdownMenuEntry(
                          value: '3',
                          label: 'Махачкалинский',
                        ),
                      ],
                      onSelected: (String? value) {
                        print('Выбрано: $value');
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: leftRightMargin),
                  child: Text('Срок  ', style: textStyle),
                ),
                Expanded(
                  child: Container(
                    height: gridHeight,
                    margin: EdgeInsets.only(
                      left: leftRightMargin,
                      top: 10,
                      bottom: 10,
                    ),
                    child: CustomButton(
                      text: DateFormat('dd.MM.yyyy').format(
                        DateTime.now(),
                      ), //DateTime.now().toString().substring(0, 10),
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
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: leftRightMargin),
                  child: Text('Количество  ', style: textStyle),
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
          ),
        ],
      ),
    );
  }
}
