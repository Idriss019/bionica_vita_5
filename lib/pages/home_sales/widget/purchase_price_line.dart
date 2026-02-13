import 'package:flutter/material.dart';

class PurchasePriceWidget extends StatelessWidget {
  const PurchasePriceWidget({
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
