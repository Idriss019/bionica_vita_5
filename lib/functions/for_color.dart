import 'package:flutter/material.dart';

// Преобразование цвета в int вручную, используя компоненты ARGB
int convertColorToIntManually(Color color) {
  return ((color.a * 255).toInt() << 24) |
      ((color.r * 255).toInt() << 16) |
      ((color.g * 255).toInt() << 8) |
      (color.b * 255).toInt();
}

// Преобразование цвета int в тип Color
Color convertIntToColorManually(int value) {
  final a = ((value >> 24) & 0xFF) / 255.0;
  final r = ((value >> 16) & 0xFF) / 255.0;
  final g = ((value >> 8) & 0xFF) / 255.0;
  final b = (value & 0xFF) / 255.0;

  return Color.fromRGBO(
    (r * 255).round(),
    (g * 255).round(),
    (b * 255).round(),
    a,
  );
}

// представление цвета в HSL для hover
Color lightenColor(Color color, [double amount = 0.1]) {
  final hsl = HSLColor.fromColor(color);
  final hslLight = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));
  return hslLight.toColor();
}
