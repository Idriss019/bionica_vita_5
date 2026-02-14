import 'package:bionica_vita_5/globalWidgets/global_widgets.dart';
import 'package:flutter/material.dart';

class CartCheckoutPage extends StatelessWidget {
  const CartCheckoutPage({super.key});

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
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: leftRightMargin),
              child: Center(
                child: Text(
                  'Оформления корзины',
                  style: textStyle.copyWith(fontSize: 32),
                ),
              ),
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
                  flex: 2,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: leftRightMargin),
                          child: Text(
                            'Корзина в ин. валюте',
                            style: textStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        margin: EdgeInsets.only(
                          // left: leftRightMargin,
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
                            'Корзина в рублях',
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
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: leftRightMargin),
                          child: Text(
                            'Курс',
                            style: textStyle.copyWith(fontSize: 24),
                          ),
                        ),
                      ),
                      Container(
                        width: 80,
                        margin: EdgeInsets.only(
                          left: leftRightMargin,
                          right: leftRightMargin,
                        ),
                        height: borderHeight,
                        child: TextFieldCustom(textStyle: textStyle),
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
          ),
          Container(
            height: gridHeight - 15,
            decoration: BoxDecoration(
              border: Border.all(color: colorLineBorder, width: 0.5),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: leftRightMargin),
              child: Center(
                child: Text(
                  '⬇ Товар ⬇',
                  style: textStyle.copyWith(fontSize: 28),
                ),
              ),
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
                  // flex: 7,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: leftRightMargin),
                        child: Text(
                          'Название',
                          style: textStyle.copyWith(fontSize: 20),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: 140,
                          margin: EdgeInsets.only(
                            left: leftRightMargin,
                            // right: leftRightMargin,
                          ),
                          height: borderHeight,
                          child: TextFieldCustom(textStyle: textStyle),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  // flex: 5,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: leftRightMargin),
                        child: Text(
                          'Штрих-код',
                          style: textStyle.copyWith(fontSize: 20),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: 140,
                          margin: EdgeInsets.only(
                            left: leftRightMargin,
                            right: leftRightMargin,
                          ),
                          height: borderHeight,
                          child: TextFieldCustom(textStyle: textStyle),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        child: Container(
                          margin: EdgeInsets.only(right: leftRightMargin),
                          height: double.infinity,
                          width: 50,
                          child: CustomButton(
                            text: '+',
                            textStyle: textStyle.copyWith(
                              fontSize: 30,
                              // fontWeight: FontWeight.w500,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Expanded(
                //   // flex: 1,
                //   child: Container(
                //     margin: EdgeInsets.only(top: 10, bottom: 10),
                //     child: Container(
                //       margin: EdgeInsets.only(right: leftRightMargin),
                //       height: double.infinity,
                //       // width: 200,
                //       child: CustomButton(
                //         text: '+',
                //         textStyle: textStyle.copyWith(
                //           fontSize: 30,
                //           // fontWeight: FontWeight.w500,
                //         ),
                //         onPressed: () {},
                //       ),
                //     ),
                //   ),
                // ),
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
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: leftRightMargin),
                          child: Text(
                            'Цена в ин. валюте',
                            style: textStyle.copyWith(fontSize: 20),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          // margin: EdgeInsets.only(left: leftRightMargin),
                          height: borderHeight,
                          child: TextFieldCustom(textStyle: textStyle),
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
                        child: Text(
                          'Цена в рублях',
                          style: textStyle.copyWith(fontSize: 20),
                        ),
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
        ],
      ),
    ); //Center(child: Text("Страница оформления корзины"));
  }
}

/* 
таблица продуктов   = штрих код, название, граммы, объем,  цена в ин валюте
сумма цены продуктов в ин валюте

= кнопка внести
*/