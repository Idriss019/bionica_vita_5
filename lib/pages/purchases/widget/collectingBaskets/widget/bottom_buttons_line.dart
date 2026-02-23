import 'package:bionica_vita_5/globalWidgets/global_widgets.dart';
import 'package:flutter/material.dart';

class BottomButtonsLine extends StatelessWidget {
  const BottomButtonsLine({
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
            child: Container(
              margin: EdgeInsets.only(left: 30, top: 10, bottom: 10),
              child: Container(
                margin: EdgeInsets.only(right: 8),
                height: double.infinity,
                child: CustomButton(
                  text: 'Оформить посылку',
                  textStyle: textStyle,
                  onPressed: () {},
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 30, left: 30),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Divider(
                      height: 2,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Divider(
                      height: 2,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Container(
                      margin: EdgeInsets.only(right: 15, left: 15),
                      width: 400,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Итого',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            '=',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: 120,
                            child: TextFieldCustomWithOutline(
                              textStyle: textStyle,
                            ),
                          ),
                          SizedBox(
                            height: gridHeight - 20,
                            width: 90,
                            child: DropdownMenu<String>(
                              textStyle: TextStyle(
                                fontSize: 14,
                              ),
                              initialSelection: 'Вариант 1',
                              label: const Text(
                                'Вел',
                                style: TextStyle(fontSize: 10),
                              ),
                              dropdownMenuEntries: <DropdownMenuEntry<String>>[
                                DropdownMenuEntry(
                                  value: '1',
                                  label: 'КГ',
                                ),
                                DropdownMenuEntry(
                                  value: '2',
                                  label: 'СМ',
                                ),
                              ],
                              onSelected: (String? value) {
                                print('Выбрано: $value');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
