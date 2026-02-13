
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

class BottomButtonsWidget extends StatelessWidget {
  const BottomButtonsWidget({
    super.key,
    required this.gridHeight,
    required this.leftRightMargin,
    required this.textStyle,
    required this.colorLineBorder,
  });

  final double gridHeight;
  final double leftRightMargin;
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
                      onPressed: () {},
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
        contentPadding: EdgeInsets.only(
          top: 0,
          bottom: 10,
          left: 10,
          right: 10,
        ),
      ),
    );
  }
}
