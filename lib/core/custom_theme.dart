import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get dark => ThemeData(
        primaryColor: Colors.blueAccent,
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            fontSize: 132.0,
            color: Colors.white,
            shadows: [
              Shadow(offset: Offset(10, 5), color: Colors.black),
              Shadow(offset: Offset(0, 5), color: Colors.black),
            ],
          ),
        ),
      );
}
