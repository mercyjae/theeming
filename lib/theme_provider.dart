


import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode thememode = ThemeMode.dark;

bool get isDark => thememode == ThemeMode.dark;
 void toggleTheme(bool isOn){
    thememode  = isOn? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}