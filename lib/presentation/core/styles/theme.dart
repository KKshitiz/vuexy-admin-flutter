import 'package:flutter/material.dart';

class AppThemes {
  static get light => lightThemeData;
  static get dark => darkThemeData;
}

final lightThemeData = ThemeData.light().copyWith(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
);

final darkThemeData = ThemeData.dark()
    .copyWith(colorScheme: ColorScheme.fromSeed(seedColor: Colors.green));
