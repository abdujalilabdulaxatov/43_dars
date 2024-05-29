import 'package:flutter/material.dart';
import 'package:homework/models/settings.dart';

class SettingsController with ChangeNotifier {
  final Apptheme apptheme = Apptheme(themeMode: ThemeMode.system);

  void toggle(bool isDone) {
    apptheme.themeMode = isDone ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
