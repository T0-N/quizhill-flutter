import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

abstract class QuizhillColors {
  static const Color silesiant = Color(0xFF0081C6);
  static const Color silesiantDark = Color(0xFFF5C600);
}

class QuizhillTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: QuizhillColors.silesiant,
        brightness: Brightness.light,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: QuizhillColors.silesiantDark,
        brightness: Brightness.dark,
      ),
    );
  }
}
