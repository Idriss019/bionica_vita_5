import 'package:shared_preferences/shared_preferences.dart';

class ThemeSP {
  final sharedPreferences = SharedPreferences.getInstance();
  String themeChoice = 'light';

  Future<String> getTheme() async {
    final themeChoice = (await sharedPreferences).getString('theme') ?? 'light';
    return themeChoice;
  }

  Future<void> setTheme(String themeChoice) async {
    (await sharedPreferences).setString('theme', themeChoice);
  }
}
