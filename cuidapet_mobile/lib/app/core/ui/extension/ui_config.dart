import 'package:flutter/material.dart';

abstract class UiConfig {
  UiConfig._();

  static String get title => 'CuidaPet';
  
  static ThemeData get theme => ThemeData(
        primaryColor: const Color(0xffA8CE4B),
        primaryColorDark: const Color(0xff689F38),
        primaryColorLight: const Color(0xffDDE9C7),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xffA8CE4B),
        ),
      );
}
