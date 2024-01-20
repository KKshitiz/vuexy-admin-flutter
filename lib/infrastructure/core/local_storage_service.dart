import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  LocalStorageService._privateConstructor();

  static late SharedPreferences _preferences;

  static Future<void> initialize() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static String getString(String key, {String defaultValue = ''}) {
    return _preferences.getString(key) ?? defaultValue;
  }

  static setString(String key, String value) {
    _preferences.setString(key, value);
  }
}
