import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:homework/views/screens/home_screen.dart';

class LockScreen extends StatefulWidget {
  const LockScreen({super.key});

  @override
  State<LockScreen> createState() => _LockScreenState();
}

class _LockScreenState extends State<LockScreen> {
  TextEditingController _textEditingController = TextEditingController();
  final _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const Text(
            'Pinkod: 4444',
            style: TextStyle(color: Colors.white),
          ),
          Gap(200),
          Form(
              key: _globalKey,
              child: Column(
                children: [
                  TextFormField(
                    maxLength: 4,
                    controller: _textEditingController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter pin';
                      } else if (value != '4444') {
                        return 'Error pin';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        label: Text('Enter pin'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                  Gap(20),
                  InkWell(
                    onTap: () {
                      if (_globalKey.currentState!.validate()) {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (ctx) => HomeScreen()));
                      }
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade900,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Center(
                        child: Text('Kirish'),
                      ),
                    ),
                  )
                ],
              ))
        ],
      )),
    );
  }
}
