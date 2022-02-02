// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const THEMEMODE = ThemeMode.dark;

const Color PRIMARY_COLOR_LIGHT = Color.fromARGB(255, 163, 163, 255);

const Color PRIMARY_COLOR_DARK = Color.fromARGB(255, 24, 8, 24);

Map<int, Color> colorsLight = {};
Map<int, Color> colorsDark = {};

MaterialColor createMaterialColor(Color color, Brightness brightness) {
  List strengths = <double>[.05];
  final swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  if (brightness == Brightness.dark) {
    colorsDark = swatch;
  } else {
    colorsLight = swatch;
  }
  return MaterialColor(color.value, swatch);
}

AppBarTheme appBarTheme = const AppBarTheme(
  centerTitle: true,
);

var elevatedButtonStyle = ElevatedButton.styleFrom(
  padding: const EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 12,
  ),
  textStyle: const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  ),
);
var outlineButtonStyle = OutlinedButton.styleFrom(
  side: BorderSide(
    width: 2,
    color: materialColorDark.shade100,
  ),
  padding: const EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 12,
  ),
  textStyle: const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  ),
);

final materialColorLight = createMaterialColor(
  PRIMARY_COLOR_LIGHT,
  Brightness.light,
);
final ColorScheme schemaLight = ColorScheme.fromSeed(
  seedColor: materialColorLight,
  background: materialColorLight.shade50.withOpacity(.5),
  surface: materialColorLight,
  brightness: Brightness.light,
);
final ThemeData lightTheme = ThemeData.light().copyWith(
    colorScheme: schemaLight,
    appBarTheme: appBarTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: elevatedButtonStyle,
    ));
final materialColorDark = createMaterialColor(
  PRIMARY_COLOR_DARK,
  Brightness.dark,
);
final ColorScheme schemaDark = ColorScheme.fromSeed(
    seedColor: materialColorDark,
    background: materialColorDark.shade900,
    brightness: Brightness.dark,
    surface: materialColorDark);
final ThemeData darkTheme = ThemeData.dark().copyWith(
  colorScheme: schemaDark,
  appBarTheme: appBarTheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: elevatedButtonStyle,
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: outlineButtonStyle,
  ),
);



// class CustomTheme {
//   static ThemeMode themeMode = THEME_MODE;
//
//   static ThemeData lightTheme = ThemeData(primaryColor: PRIMARY_COLOR_LIGHT);
//
//   static ThemeData darkTheme =
//       ThemeData.dark().copyWith(primaryColor: PRIMARY_COLOR_DARK);
// }
