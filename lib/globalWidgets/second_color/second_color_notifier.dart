import 'package:bionica_vita_5/DB/dataSP/second_color_sp.dart';
import 'package:bionica_vita_5/functions/for_color.dart';
import 'package:flutter/material.dart';

class SecondColorNotifier extends ChangeNotifier {
  SecondColorNotifier() {
    loadSecondColor();
  }

  final secondColorSP = SecondColorSP();
  Color _secondColor = Colors.red;

  Color get secondColor => _secondColor;

  Future<void> loadSecondColor() async {
    final int loadSecondColor = await secondColorSP.loadValue();
    // print('loadSecondColor');
    // print(loadSecondColor);
    _secondColor = convertIntToColorManually(loadSecondColor);
    notifyListeners();
  }

  Future<void> saveSecondColor(Color newSecondColor) async {
    // print('updateSecondColor');
    // print(convertColorToIntManually1(newSecondColor));
    await secondColorSP.saveValue(convertColorToIntManually(newSecondColor));
  }

  void updateSecondColor(Color newSecondColor) {
    // print('updateSecondColor');
    // print(convertColorToIntManually1(newSecondColor));
    saveSecondColor(newSecondColor);
    notifyListeners();
  }
}
