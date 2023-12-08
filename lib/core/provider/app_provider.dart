import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  String currentLocal = "en";

  changeTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }

  changeLanguage(String newLanguage) {
    if (currentLocal == newLanguage) return;
    currentLocal = newLanguage;
    notifyListeners();
  }
}
