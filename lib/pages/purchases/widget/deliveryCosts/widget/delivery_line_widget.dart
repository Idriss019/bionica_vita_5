import 'package:bionica_vita_5/globalWidgets/global_widgets.dart';
import 'package:flutter/material.dart';

class DeliveryLineWidget extends StatelessWidget {
  final double gridHeight;
  final double leftRightMargin;
  final double borderHeight;
  final TextStyle textStyle;
  final Color colorLineBorder;

  const DeliveryLineWidget({
    super.key,
    required this.gridHeight,
    required this.leftRightMargin,
    required this.borderHeight,
    required this.textStyle,
    required this.colorLineBorder,
  });

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
                Container(
                  width: 150,
                  margin: EdgeInsets.only(left: leftRightMargin),
                  child: Text(
                    'Доставка транс. компании',
                    style: textStyle.copyWith(fontSize: 16),
                  ),
                ),
                Container(
                  width: 160,
                  margin: EdgeInsets.only(
                    left: leftRightMargin,
                  ),
                  height: borderHeight,
                  child: TextFieldCustom(textStyle: textStyle),
                ),
                Expanded(
                  child: Container(
                    width: 100,
                    height: gridHeight,
                    margin: EdgeInsets.only(
                      left: leftRightMargin,
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
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: leftRightMargin),
                    child: Text(
                      'Доп. расход на дорогу',
                      style: textStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
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
