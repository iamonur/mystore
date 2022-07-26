import 'package:flutter/material.dart';

class CustomTheme {
  static const Color grey = Colors.grey;
  static const Color yellow = Colors.yellow;
  static const cardShadow = [
    BoxShadow(color: grey, blurRadius: 5, spreadRadius: 4, offset: Offset(0, 2))
  ];

  static ThemeData getTheme() {
    Map<String, double> fontSize = {
      "sm": 14,
      "md": 18,
      "lg": 24,
    };

    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        toolbarHeight: 70,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontFamily: 'Merriweather',
          fontSize: fontSize['lg'],
          fontWeight: FontWeight.bold,
          letterSpacing: 4,
        ),
      ),
      tabBarTheme: const TabBarTheme(
        labelColor: yellow,
        unselectedLabelColor: Colors.black,
      ),
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
