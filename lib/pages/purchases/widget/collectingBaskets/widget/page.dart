import 'package:bionica_vita_5/globalWidgets/global_widgets.dart';
import 'package:bionica_vita_5/pages/purchases/widget/collectingBaskets/widget/header_line.dart';
import 'package:flutter/material.dart';

class CollectingBasketsPage extends StatelessWidget {
  const CollectingBasketsPage({super.key});

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
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
        decoration: BoxDecoration(
          border: Border.all(color: colorLineBorder, width: 0.5),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            HeaderWidget(
              gridHeight: gridHeight,
              leftRightMargin: leftRightMargin,
              textStyle: textStyle,
              colorLineBorder: colorLineBorder,
            ),
            /* */
            // Container(
            //   height: gridHeight,
            //   decoration: BoxDecoration(
            //     border: Border.all(color: colorLineBorder, width: 0.5),
            //     borderRadius: BorderRadius.all(Radius.circular(10)),
            //   ),
            //   child: Row(
            //     children: [
            //       Expanded(
            //         child: Row(
            //           children: [
            //             Container(
            //               width: 150,
            //               margin: EdgeInsets.only(left: leftRightMargin),
            //               child: Text(
            //                 'Доставка транс. компании',
            //                 style: textStyle.copyWith(fontSize: 16),
            //               ),
            //             ),
            //             Container(
            //               width: 160,
            //               margin: EdgeInsets.only(
            //                 left: leftRightMargin,
            //                 // right: leftRightMargin,
            //               ),
            //               height: borderHeight,
            //               child: TextFieldCustom(textStyle: textStyle),
            //             ),
            //             Expanded(
            //               child: Container(
            //                 width: 100,
            //                 height: gridHeight,
            //                 margin: EdgeInsets.only(
            //                   left: leftRightMargin,
            //                   // right: leftRightMargin,
            //                   top: 10,
            //                   bottom: 10,
            //                 ),
            //                 child: DropdownMenu<String>(
            //                   initialSelection: 'Вариант 1',
            //                   label: const Text('Величина'),
            //                   dropdownMenuEntries: <DropdownMenuEntry<String>>[
            //                     DropdownMenuEntry(value: '1', label: 'КГ'),
            //                     DropdownMenuEntry(value: '2', label: 'СМ'),
            //                     DropdownMenuEntry(value: '3', label: 'Цена'),
            //                   ],
            //                   onSelected: (String? value) {
            //                     print('Выбрано: $value');
            //                   },
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),

            //       Expanded(
            //         child: Row(
            //           children: [
            //             Expanded(
            //               child: Container(
            //                 margin: EdgeInsets.only(left: leftRightMargin),
            //                 child: Text(
            //                   'Доп. расход на дорогу',
            //                   style: textStyle.copyWith(fontSize: 16),
            //                 ),
            //               ),
            //             ),
            //             Expanded(
            //               child: Container(
            //                 margin: EdgeInsets.only(
            //                   // left: leftRightMargin,
            //                   right: leftRightMargin,
            //                 ),
            //                 height: borderHeight,
            //                 child: TextFieldCustom(textStyle: textStyle),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
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
            //         child: Text('Поиск корзины', style: textStyle),
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
            /* TableBaskets */
            Container(
              height: gridHeight * 3,
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
                        SizedBox(
                          width: 100,
                          child: Text(
                            'Добавить',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   width: 80,
                        //   child: Text(
                        //     'Кол.',
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
                              'Козины',
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
                          width: 200,
                          child: Text(
                            'КГ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: Text(
                            'Объем',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
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
            /* Find */
            Container(
              height: gridHeight,
              decoration: BoxDecoration(
                border: Border.all(color: colorLineBorder, width: 0.5),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(left: leftRightMargin),
                  child: Text('⬇ Корзина заказа ⬇', style: textStyle),
                ),
              ),
            ),
            /* TableBaskets */
            Container(
              height: gridHeight * 6,
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
                        SizedBox(
                          width: 80,
                          child: Text(
                            'Уд.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                        ),
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
                            'Цена в ин.',
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
                            'Цена в руб.',
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
                    child: Container(
                      margin: EdgeInsets.only(left: 30, top: 10, bottom: 10),
                      child: Container(
                        margin: EdgeInsets.only(right: 8),
                        height: double.infinity,
                        // width: 200,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                        // color: Theme.of(
                                        //   context,
                                        // ).colorScheme.onPrimary,
                                      ),
                                      initialSelection: 'Вариант 1',
                                      label: const Text(
                                        'Вел',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      dropdownMenuEntries:
                                          <DropdownMenuEntry<String>>[
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
                  // Expanded(
                  //   child: Container(
                  //     width: 100,
                  //     height: gridHeight,
                  //     margin: EdgeInsets.only(
                  //       left: leftRightMargin,
                  //       // right: leftRightMargin,
                  //       top: 10,
                  //       bottom: 10,
                  //     ),
                  //     child: DropdownMenu<String>(
                  //       initialSelection: 'Вариант 1',
                  //       label: const Text('Величина'),
                  //       dropdownMenuEntries: <DropdownMenuEntry<String>>[
                  //         DropdownMenuEntry(value: '1', label: 'КГ'),
                  //         DropdownMenuEntry(value: '2', label: 'СМ'),
                  //         DropdownMenuEntry(value: '3', label: 'Цена'),
                  //       ],
                  //       onSelected: (String? value) {
                  //         print('Выбрано: $value');
                  //       },
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            // Container(
            //   margin: EdgeInsets.only(left: 30, top: 10, bottom: 10),
            //   child: Container(
            //     margin: EdgeInsets.only(right: 8),
            //     // height: double.infinity,
            //     width: 600,
            //     child: CustomButton(
            //       text: 'Оформить посылку',
            //       textStyle: textStyle,
            //       onPressed: () {},
            //     ),
            //   ),
            // ),
            // NameWidget(
            //   gridHeight: gridHeight, 'Оформить посылку'
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
      ),
    );
  }
}
