import 'package:bionica_vita_5/globalWidgets/global_widgets.dart';
import 'package:flutter/material.dart';

class RecalculationPage extends StatelessWidget {
  const RecalculationPage({super.key});

  @override
  Widget build(BuildContext context) {
    const double gridHeight = 70;
    const double leftRightMargin = 15;
    const double borderHeight = 50;
    const TextStyle textStyle = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 25,
    );
    int myDate = 0;
    const Color colorLineBorder = Color.fromARGB(150, 112, 110, 0);
    dynamic Function(int) onDateChanged(int date) {
      return (int date) {
        myDate = date;
      };
    }

    return Container(
      margin: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
      decoration: BoxDecoration(
        border: Border.all(color: colorLineBorder, width: 0.5),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          Container(
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
                          height: borderHeight,
                          child: TextFieldCustom(textStyle: textStyle),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: gridHeight,
            decoration: BoxDecoration(
              border: Border.all(color: colorLineBorder, width: 0.5),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: leftRightMargin),
                  child: Text('Поиск  ', style: textStyle),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: leftRightMargin,
                      right: leftRightMargin,
                    ),
                    height: borderHeight,
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
