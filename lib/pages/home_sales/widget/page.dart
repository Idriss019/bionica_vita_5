import 'package:bionica_vita_5/globalWidgets/costom_color_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const double gridHeight = 70;
    const double gridMargin = 10;
    const double leftRightMargin = 15;
    const double borderHeight = 50;
    const TextStyle textStyle = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 25,
    );
    const Color colorLineBorder = Color.fromARGB(150, 112, 110, 0);

    // const EdgeInsets textLine = EdgeInsets.only(top: 0, bottom: 10, left: 10, right: 10);
    return Container(
      margin: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
      decoration: BoxDecoration(
        border: Border.all(color: colorLineBorder, width: 0.5),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),

      child: Column(
        children: [
          /* BarcodeWidget */
          Container(
            height: gridHeight,
            // margin: EdgeInsets.only(bottom: gridMargin),
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
                        margin: EdgeInsets.only(left: leftRightMargin),
                        child: Text('Штрих-код', style: textStyle),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: leftRightMargin),
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
                        child: Text('Количество', style: textStyle),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(
                            left: leftRightMargin,
                            // right: textMargin,
                          ),
                          height: borderHeight,
                          child: TextFieldCustom(textStyle: textStyle),
                        ),
                      ),
                      // всего
                      Container(
                        margin: EdgeInsets.only(
                          right: leftRightMargin,
                          left: leftRightMargin,
                        ),
                        width: 85,
                        height: borderHeight,
                        child: TextFieldCustom(
                          textStyle: textStyle,
                          enabled: true,
                          labelText: 'Всего',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          /* NameWidget */
          Container(
            height: gridHeight,
            // margin: EdgeInsets.only(bottom: gridMargin),
            decoration: BoxDecoration(
              border: Border.all(color: colorLineBorder, width: 0.5),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: leftRightMargin),
                  child: Text('Название ', style: textStyle),
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
          /* PurchasePriceWidget */
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
                          child: Text('Себестоимость', style: textStyle),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: leftRightMargin),
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
                        child: Text('Цена  ', style: textStyle),
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
          /* PriceWidget */
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
                          child: Text('Цена продажи', style: textStyle),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: leftRightMargin),
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
                        child: Text('Сумма', style: textStyle),
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
          /* InputButtonWidget */
          Container(
            height: gridHeight,
            decoration: BoxDecoration(
              border: Border.all(color: colorLineBorder, width: 0.5),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 130,
                right: 130,
              ),
              child: CustomButton(text: 'Добавить', textStyle: textStyle),
            ),
          ),
          /* TableWidget */
          /* BottomButtonsWidget */
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
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          height: double.infinity,
                          width: 200,
                          child: CustomButton(
                            text: 'Продать',
                            textStyle: textStyle,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          child: CustomIconWidget(icon: Icon(Icons.delete)),
                        ),
                        CustomIconWidget(icon: Icon(Icons.restart_alt)),
                      ],
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
                                    fontSize: 38,
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
                                  width: 230,
                                  child: TextFieldCustomWithOutline(
                                    textStyle: textStyle,
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
          ),
          Center(child: Text("Домашняя страница")),
        ],
      ),
    );
  }
}

class CustomIconWidget extends StatelessWidget {
  const CustomIconWidget({super.key, required this.icon});
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: icon,
      iconSize: 45,
      padding: EdgeInsets.only(bottom: 5, left: 5, right: 5, top: 3),
      color: Theme.of(context).colorScheme.onPrimary,
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        backgroundColor: CustomColorButton(
          Theme.of(context).colorScheme.onSecondary,
          Theme.of(context).colorScheme.outline,
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.textStyle});

  final String text;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        backgroundColor: CustomColorButton(
          Theme.of(context).colorScheme.onSecondary,
          Theme.of(context).colorScheme.outline,
        ),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: textStyle.copyWith(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    );
  }
}
// class DecorationContainer extends StatelessWidget {
//   const DecorationContainer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: gridHeight,
//       margin: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: const Color.fromARGB(0, 112, 110, 0),
//           width: 0.5,
//         ),
//         borderRadius: BorderRadius.all(Radius.circular(10)),
//       ),
//     );
//   }
// }

class TextFieldCustom extends StatelessWidget {
  const TextFieldCustom({
    super.key,
    required this.textStyle,
    this.labelText,
    this.enabled = true,
    this.labelStyle = const TextStyle(color: Colors.white),
  });

  final TextStyle textStyle;
  final bool enabled;
  final String? labelText;
  final TextStyle labelStyle;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: textStyle,
      decoration: InputDecoration(
        enabled: enabled,
        labelText: labelText,
        // labelStyle: labelStyle,
        contentPadding: EdgeInsets.only(
          top: 0,
          bottom: 10,
          left: 10,
          right: 10,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.onSecondary,
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.onSecondary,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}

class TextFieldCustomWithOutline extends StatelessWidget {
  const TextFieldCustomWithOutline({
    super.key,
    required this.textStyle,
    this.labelText,
    this.enabled = true,
    this.labelStyle = const TextStyle(color: Colors.white),
  });

  final TextStyle textStyle;
  final bool enabled;
  final String? labelText;
  final TextStyle labelStyle;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: textStyle,
      decoration: InputDecoration(
        enabled: enabled,
        labelText: labelText,
        // labelStyle: labelStyle,
        contentPadding: EdgeInsets.only(
          top: 0,
          bottom: 10,
          left: 10,
          right: 10,
        ),
        // enabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.all(Radius.circular(10)),
        //   borderSide: BorderSide(
        //     color: Theme.of(context).colorScheme.onSecondary,
        //     width: 1.5,
        //   ),
        // ),
        // focusedBorder: OutlineInputBorder(
        //   borderSide: BorderSide(
        //     color: Theme.of(context).colorScheme.onSecondary,
        //     width: 1.5,
        //   ),
        // ),
      ),
    );
  }
}
