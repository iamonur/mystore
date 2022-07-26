import 'package:flutter/material.dart';

class CustomTheme {
  static const Color grey = Colors.grey;
  static const Color yellow = Colors.yellow;

  static ThemeData getTheme() {
    Map<String, double> fontSize = {
      "sm": 14,
      "md": 18,
      "lg": 24,
    };

    return ThemeData(
      primaryColor: yellow,
      fontFamily: 'Merriweather',
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          color: Colors.black,
          fontSize: fontSize['lg'],
          fontWeight: FontWeight.bold,
        ),
        headlineMedium: TextStyle(
          color: Colors.black,
          fontSize: fontSize['md'],
          fontWeight: FontWeight.bold,
        ),
        headlineSmall: TextStyle(
          color: Colors.black,
          fontSize: fontSize['sm'],
          fontWeight: FontWeight.bold,
        ),
        bodySmall: TextStyle(
          color: Colors.black,
          fontSize: fontSize['sm'],
          fontWeight: FontWeight.normal,
        ),
        titleSmall: TextStyle(
          color: Colors.black,
          fontSize: fontSize['sm'],
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
      ),
    );
  }
}
