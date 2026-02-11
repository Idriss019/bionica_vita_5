import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:vitamin_opt_7/global_widgets/theme/service/theme_change.dart';

class CustomTheme {
  final Color black;
  final Color white;
  final Color colorTheme;
  final Color colorText;
  final Color colorButton;
  final Color colorTextInButton;
  final Color colorThemeText;
  final Color colorBackground;
  final Color colorBorder;
  final Color colorBorderKub;
  CustomTheme({
    required BuildContext context,
    // required this.black,
    // required this.white,
    // required this.colorTheme,
    // required this.colorBackground,
  }) : black = Theme.of(context).colorScheme.onSecondary,
       white = Theme.of(context).colorScheme.onPrimary,
       colorBackground = Theme.of(context).colorScheme.surface,
       colorTheme = Theme.of(context).colorScheme.secondaryContainer,
       colorText = Theme.of(context).colorScheme.onSecondary,
       colorButton = Theme.of(context).colorScheme.onSecondary,
       colorTextInButton = Colors.blueGrey,
       colorThemeText = Colors.blueGrey,
       colorBorder = Theme.of(context).colorScheme.onSecondary,
       colorBorderKub = Colors.blueGrey;
}

Color primary = const Color.fromARGB(255, 254, 255, 253);
// const primaryColor = Colors.black;
// extension CustomThemeData on ThemeData{
//   Widget? icon;
// }
final darkTheme = ThemeData(
  fontFamily: 'Verdana',
  useMaterial3: true,
  textTheme: textTheme,
  // scaffoldBackgroundColor: Color.fromARGB(a, r, g, b);
  colorScheme: ColorScheme.fromSeed(
    surface: const Color.fromARGB(255, 37, 37, 37), // colorBackground
    primary: primary,
    seedColor: primary,
    onSecondary: Colors.white,
    onPrimary: Colors.black,
    secondaryContainer: Colors.blueGrey,
    brightness: Brightness.dark,
  ),
);

ThemeData lightTheme = ThemeData(
  fontFamily: 'Verdana',
  textTheme: textTheme,
  useMaterial3: true,
  // scaffoldBackgroundColor: Color.fromARGB(a, r, g, b);
  colorScheme: ColorScheme.fromSeed(
    surface: Color.fromARGB(255, 228, 230, 226),
    primary: primary,
    seedColor: primary,
    onSecondary: Colors.black,
    secondaryContainer: Colors.blueGrey,
    onPrimary: Colors.white,
    brightness: Brightness.light,
  ),
);

final textTheme = const TextTheme(
  titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
  headlineLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
);




