import 'package:flutter/material.dart';
import 'package:homework/views/screens/home_screen.dart';
import 'package:homework/views/screens/settings_screen.dart';

class Drawes extends StatefulWidget {
  const Drawes({super.key});

  @override
  State<Drawes> createState() => _DrawesState();
}

class _DrawesState extends State<Drawes> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (ctx) => SettingsScreen()));
            },
            title: Text('Settings'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (ctx) => HomeScreen()));
            },
            title: Text('Home'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
        ],
      ),
    );
  }
}
