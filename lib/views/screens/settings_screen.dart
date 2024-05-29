import 'package:flutter/material.dart';
import 'package:homework/notifiers/settings_notifier.dart';
import 'package:homework/views/widgets/drawer.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final setting = SettingsNotifier.of(context).apptheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Settings'),
      ),
      drawer: Drawes(),
      body: ListView(
        children: [
          SwitchListTile.adaptive(
              title: Text('Dark mode'),
              value: setting.themeMode == ThemeMode.dark,
              onChanged: (value) {
                SettingsNotifier.of(context).toggle(value);
              }),
          SwitchListTile.adaptive(
              title: Text('change app bar color'),
              value: setting.themeMode == ThemeMode.dark,
              onChanged: (value) {
                SettingsNotifier.of(context).toggle(value);
              }),
          SwitchListTile.adaptive(
              title: Text('Change letter size'),
              value: setting.themeMode == ThemeMode.dark,
              onChanged: (value) {
                SettingsNotifier.of(context).toggle(value);
              }),
          SwitchListTile.adaptive(
              title: Text('Pin kod'),
              value: setting.themeMode == ThemeMode.dark,
              onChanged: (value) {
                SettingsNotifier.of(context).toggle(value);
              }),
        ],
      ),
    );
  }
}
