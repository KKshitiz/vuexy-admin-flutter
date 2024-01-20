import 'package:flutter/material.dart';
import 'package:vuexy_flutter/presentation/core/styles/colors.dart';

enum AppTheme {
  primary,
  secondary,
  ;

  String toJson() => name;
  static AppTheme fromString(String value) => values.byName(value);
}

class AppThemeData {
  static const Map<AppTheme, Color> themeToColorMap = {
    AppTheme.primary: AppColors.primary,
    AppTheme.secondary: AppColors.secondary,
  };

  static ThemeData generateThemeDataFromTheme(AppTheme theme) {
    final Color themeColor = themeToColorMap[theme] ?? AppColors.primary;
    final themeData = ThemeData.light().copyWith(
      colorScheme: ColorScheme.fromSeed(seedColor: themeColor),
      textTheme: ThemeData.light().textTheme,
    );

    return themeData;
  }
}
