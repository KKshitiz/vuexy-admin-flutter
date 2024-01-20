import 'package:flutter/material.dart';
import 'package:vuexy_flutter/domain/core/app_logger.dart';
import 'package:vuexy_flutter/domain/core/constants/storage_constants.dart';
import 'package:vuexy_flutter/infrastructure/core/local_storage_service.dart';
import 'package:vuexy_flutter/presentation/core/styles/theme.dart';

class ThemeManager extends ChangeNotifier {
  late ThemeMode _themeMode;
  late ThemeData _themeData;

  ThemeMode get currentThemeMode => _themeMode;
  ThemeData get lightThemeData =>
      _themeData.copyWith(brightness: Brightness.light);
  ThemeData get darkThemeData =>
      _themeData.copyWith(brightness: Brightness.dark);

  ThemeManager() {
    _loadThemeMode();
    _loadThemeData();
    notifyListeners();
  }

  void updateThemeMode(ThemeMode mode) {
    LocalStorageService.setString(StorageConstants.themeMode, mode.name);
    _themeMode = mode;
    logger.info('Theme mode changed to ${mode.name}');
    notifyListeners();
  }

  void updateTheme(AppTheme theme) {
    LocalStorageService.setString(StorageConstants.theme, theme.name);
    logger.info('Theme changed to ${theme.name}');
    _loadThemeData();
    notifyListeners();
  }

  void _loadThemeMode() {
    final themeModeString = LocalStorageService.getString(
      StorageConstants.themeMode,
      defaultValue: ThemeMode.dark.name,
    );
    final ThemeMode themeMode = themeModeString == ThemeMode.light.name
        ? ThemeMode.light
        : themeModeString == ThemeMode.dark.name
            ? ThemeMode.dark
            : ThemeMode.system;
    _themeMode = themeMode;
    logger.info('Theme mode loaded: ${themeMode.name}');
  }

  void _loadThemeData() {
    final themeString = LocalStorageService.getString(
      StorageConstants.theme,
      defaultValue: AppTheme.primary.name,
    );
    final AppTheme theme = AppTheme.fromString(themeString);
    _themeData = AppThemeData.generateThemeDataFromTheme(theme);
    logger.info('Theme loaded: ${theme.name}');
  }
}
