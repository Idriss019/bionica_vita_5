import 'package:shared_preferences/shared_preferences.dart';

class SecondColorSP {
  final sharedPreferences = SharedPreferences.getInstance();

  Future<int> loadValue() async {
    final colorInt = (await sharedPreferences).getInt('colorInt') ?? 0;
    return colorInt;
  }

  Future<void> saveValue(int colorInt) async {
    (await sharedPreferences).setInt('colorInt', colorInt);
  }
}
