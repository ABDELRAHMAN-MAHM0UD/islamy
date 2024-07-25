import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Appconfiglanguage with ChangeNotifier {
  String _appLanguage = "en";
  static const String LangKey = "language";
  ThemeMode _appTheme = ThemeMode.dark;
  static const String themeKey = "theme";

  Appconfiglanguage() {
    _loadSettings();
  }

  String get AppLanguage => _appLanguage;
  ThemeMode get AppTheme => _appTheme;

  set AppLanguage(String value) {
    if (_appLanguage != value) {
      _appLanguage = value;
      _saveLanguage(_appLanguage);
      notifyListeners();
    }
  }

  set AppTheme(ThemeMode newTheme) {
    if (_appTheme != newTheme) {
      _appTheme = newTheme;
      _saveTheme(_appTheme);
      notifyListeners();
    }
  }

  bool isDark() {
    return AppTheme == ThemeMode.dark;
  }

  void _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    _appLanguage = prefs.getString(LangKey) ?? "en";
    _appTheme = (prefs.getString(themeKey) == "dark") ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  void _saveLanguage(String language) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(LangKey, language);
  }

  void _saveTheme(ThemeMode theme) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(themeKey, theme == ThemeMode.dark ? "dark" : "light");
  }
}
