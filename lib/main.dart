import 'package:flutter/material.dart';
import 'package:homework/controller/controllers.dart';
import 'package:homework/notifiers/settings_notifier.dart';
import 'package:homework/views/screens/lock_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsNotifier(
      settingsController: SettingsController(),
      child: Builder(builder: (context) {
        return ListenableBuilder(
          listenable: SettingsNotifier.of(context),
          builder: (context, child) => MaterialApp(
            darkTheme: ThemeData.dark(),
            themeMode: SettingsNotifier.of(context).apptheme.themeMode,
            debugShowCheckedModeBanner: false,
            home: LockScreen(),
          ),
        );
      }),
    );
  }
}
