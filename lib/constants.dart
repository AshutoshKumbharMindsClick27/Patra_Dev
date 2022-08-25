import 'package:flutter/material.dart';

class Constants {
  static String brandName = "Patra";
  static ThemeData theme1 = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.black87,
    fontFamily: 'Roboto',
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),
  );
}
