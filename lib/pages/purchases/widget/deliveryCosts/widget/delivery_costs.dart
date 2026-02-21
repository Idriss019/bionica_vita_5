import 'package:bionica_vita_5/globalWidgets/global_widgets.dart';
import 'package:flutter/material.dart';

class DeliveryCostsPage extends StatelessWidget {
  const DeliveryCostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const double gridHeight = 70;
    const double leftRightMargin = 15;
    const double borderHeight = 50;
    const TextStyle textStyle = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 25,
    );
    const Color colorLineBorder = Color.fromARGB(150, 112, 110, 0);
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
            child: Center(
              child: Container(
                margin: EdgeInsets.only(left: leftRightMargin),
                child: Text('Расходы на доставку', style: textStyle),
              ),
            ),
          ),
          /* TableBaskets */
          Container(
            height: gridHeight * 7,
            decoration: BoxDecoration(
              border: Border.all(color: colorLineBorder, width: 0.5),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onSecondary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    border: Border.all(width: 1),
                  ),
                  width: double.infinity,
                  height: 45,
                  child: Row(
                    children: [
                      // SizedBox(
                      //   width: 80,
                      //   child: Text(
                      //     'Уд.',
                      //     textAlign: TextAlign.center,
                      //     style: TextStyle(
                      //       fontSize: 16,
                      //       color: Theme.of(context).colorScheme.onPrimary,
                      //     ),
                      //   ),
                      // ),
                      Expanded(
                        child: SizedBox(
                          child: Text(
                            'Название',
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 18,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          'Сумма',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   width: 100,
                      //   child: Text(
                      //     'Цена в руб.',
                      //     textAlign: TextAlign.center,
                      //     style: TextStyle(
                      //       fontSize: 14,
                      //       color: Theme.of(context).colorScheme.onPrimary,
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          'Граммы',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          'Объем',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          'Доставка',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
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
                          // right: leftRightMargin,
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
                            // right: leftRightMargin,
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
                            // left: leftRightMargin,
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
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                left: 120,
                top: 10,
                bottom: 10,
                right: 120,
              ),
              // child: Container(
              // margin: EdgeInsets.only(right: 8),
              // height: double.infinity,
              // width: 200,
              child: CustomButton(
                text: 'Добавить расходы',
                textStyle: textStyle,
                onPressed: () {},
              ),
            ),
            // ),
          ),
          // /* Find */
          // Container(
          //   height: gridHeight,
          //   decoration: BoxDecoration(
          //     border: Border.all(color: colorLineBorder, width: 0.5),
          //     borderRadius: BorderRadius.all(Radius.circular(10)),
          //   ),
          //   child: Row(
          //     children: [
          //       Container(
          //         margin: EdgeInsets.only(left: leftRightMargin),
          //         child: Text('Поиск посылки', style: textStyle),
          //       ),
          //       Expanded(
          //         child: Container(
          //           margin: EdgeInsets.only(
          //             left: leftRightMargin,
          //             right: leftRightMargin,
          //           ),
          //           height: borderHeight,
          //           child: TextFieldCustom(textStyle: textStyle),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // NameWidget(
          //   gridHeight: gridHeight,
          //   leftRightMargin: leftRightMargin,
          //   borderHeight: borderHeight,
          //   textStyle: textStyle,
          //   colorLineBorder: colorLineBorder,
          // ),
          // PriceForeignCurrencyWidget(
          //   gridHeight: gridHeight,
          //   leftRightMargin: leftRightMargin,
          //   borderHeight: borderHeight,
          //   textStyle: textStyle,
          //   colorLineBorder: colorLineBorder,
          // ),
        ],
      ),
    );
  }
}
