import 'package:bionica_vita_5/DB/dataSP/theme_sp.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeProvider() {
    loadTheme();
  }

  final themeSP = ThemeSP();
  String _theme = 'light';

  String get theme => _theme;

  Future<void> loadTheme() async {
    final loadTheme = themeSP.getTheme();
    _theme = await loadTheme;
    notifyListeners();
  }

  Future<void> saveTheme(String newThemeChoice) async {
    _theme = newThemeChoice;
    await themeSP.setTheme(_theme);
  }

  void updateTheme(String newTheme) {
    saveTheme(newTheme);
    notifyListeners();
  }
}
