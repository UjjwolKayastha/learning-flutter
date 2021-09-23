import 'package:flutter/material.dart';

const Map<int, Color> color = {
  50: Color.fromRGBO(34, 172, 56, .1),
  100: Color.fromRGBO(34, 172, 56, .2),
  200: Color.fromRGBO(34, 172, 56, .3),
  300: Color.fromRGBO(34, 172, 56, .4),
  400: Color.fromRGBO(34, 172, 56, .5),
  500: Color.fromRGBO(34, 172, 56, .6),
  600: Color.fromRGBO(34, 172, 56, .7),
  700: Color.fromRGBO(34, 172, 56, .8),
  800: Color.fromRGBO(34, 172, 56, .9),
  900: Color.fromRGBO(34, 172, 56, 1),
};

const MaterialColor colorCustom = MaterialColor(0xFF22AC38, color);

class AppTheme {
  static const MaterialColor primarySwatch = colorCustom;
  static const Color primaryColor = Color.fromRGBO(34, 172, 56, 1);
  static const Color completeBlack = Color.fromRGBO(0, 0, 0, 1);
}

ThemeData appTheme() {
  return ThemeData(
    fontFamily: 'IndieFlower',
    primaryColor: AppTheme.primaryColor,
    iconTheme: IconThemeData(color: AppTheme.primaryColor),
    textTheme: TextTheme(
      bodyText1: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      bodyText2:
          TextStyle(fontWeight: FontWeight.w300, color: AppTheme.primaryColor),
    ),
  );
}
