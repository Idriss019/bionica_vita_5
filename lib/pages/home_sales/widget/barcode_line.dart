import 'package:bionica_vita_5/globalWidgets/custom_color_button.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.textStyle,
    required this.onPressed,
  });

  final String text;
  final TextStyle textStyle;
  final Function() onPressed;

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
      onPressed: onPressed,
      child: Text(
        text,
        style: textStyle.copyWith(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    );
  }
}

class BarcodeWidget extends StatelessWidget {
  const BarcodeWidget({
    super.key,
    required this.gridHeight,
    required this.leftRightMargin,
    required this.borderHeight,
    required this.textStyle,
    required this.colorLineBorder,
    required this.onDateChanged,
  });

  final double gridHeight;
  final double leftRightMargin;
  final double borderHeight;
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
                Container(
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
                      DropdownMenuEntry(value: '2', label: 'Кизлярский'),
                      DropdownMenuEntry(value: '3', label: 'Махачкалинский'),
                    ],
                    onSelected: (String? value) {
                      print('Выбрано: $value');
                    },
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
