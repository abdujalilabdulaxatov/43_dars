import 'package:flutter/material.dart';
import 'package:homework/controller/controllers.dart';

class SettingsNotifier extends InheritedWidget {
  final SettingsController settingsController;

  @override
  bool updateShouldNotify(covariant SettingsNotifier oldWidget) {
    return oldWidget.settingsController != settingsController;
  }

  SettingsNotifier({
    super.key,
    required super.child,
    required this.settingsController,
  });

  static SettingsController of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<SettingsNotifier>()!
        .settingsController;
  }
}
