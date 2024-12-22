import 'package:first_test/theme/theme.dart';
import 'package:flutter/material.dart';
import 'screens/main_screen.dart';
import 'screens/catalog_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/profile_screen.dart';

extension BuildContextExt on BuildContext {
  ThemeColors get customColor => Theme.of(this).extension<ThemeColors>()!;

  ThemeTextStyles get customTextStyle =>
      Theme.of(this).extension<ThemeTextStyles>()!;

  ThemeGradients get customGradient =>
      Theme.of(this).extension<ThemeGradients>()!;
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CreateThemeData(),
      home: MainScreen(),
      routes: {
        '/main': (context) => MainScreen(),
        '/catalog': (context) => CatalogScreen(),
        '/cart': (context) => CartScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
