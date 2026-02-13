import 'package:bionica_vita_5/functions/for_color.dart';
import 'package:flutter/material.dart';

/* Цвет главной кнопка нажатия */
class CustomColorButton2 extends WidgetStateColor {
  final Color buttonColor;
  final Color? onPressColor;
  CustomColorButton2(this.buttonColor, Color? onPressColor)
    : onPressColor = onPressColor ?? lightenColor(buttonColor),
      super(_defaultColor);

  static final int _defaultColor = 0x11111111;
  // Color get defaultColor => _defaultColor; lightenColor
  Color get defaultColor => buttonColor;
  // Color defaultColor = color;
  Color get pressedColor => onPressColor ?? lightenColor(buttonColor);

  @override
  Color resolve(Set<WidgetState> states) {
    if (states.contains(WidgetState.pressed)) {
      return pressedColor;
    }
    return defaultColor;
  }
}

class CustomColorButton extends WidgetStateColor {
  final Color buttonColor;
  final Color onPressColor;
  CustomColorButton(this.buttonColor, this.onPressColor)
    : super(_defaultColor) {
    // this.color = color;
  }

  static final int _defaultColor = 0x11111111;
  // Color get defaultColor => _defaultColor;
  Color get defaultColor => buttonColor;
  // Color defaultColor = color;
  Color get pressedColor => onPressColor;

  @override
  Color resolve(Set<WidgetState> states) {
    if (states.contains(WidgetState.pressed)) {
      return pressedColor;
    }
    return defaultColor;
  }
}
