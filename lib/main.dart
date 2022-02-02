import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_1_0/home_page.dart';
import 'package:riverpod_1_0/tela2.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: FlexThemeData.light(
        scheme: FlexScheme.aquaBlue,
      ),
      darkTheme: FlexThemeData.dark(
        scheme: FlexScheme.outerSpace,
        textTheme: Theme.of(context).textTheme.copyWith(
              bodyText2: TextStyle(
                fontSize: 24,
              ),
            ),
      ),
      themeMode: ThemeMode.dark,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/tela2': (context) => const Tela2(),
      },
    );
  }
}
