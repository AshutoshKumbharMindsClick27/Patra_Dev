import 'package:flutter/material.dart';

class Constants {
  static String brandName = "Patra";
  static double heading1 = 32;
  static double heading2 = 24;
  static double heading3 = 21;
  static double heading4 = 18;
  static double heading5 = 16;
  static double body1 = 18;
  static double body2 = 16;
  static double body3 = 14;
  static double body4 = 12;
  static double body5 = 10;

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
