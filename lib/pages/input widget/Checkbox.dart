import 'package:flutter/material.dart';

class checkboxscreen extends StatefulWidget {
  const checkboxscreen({super.key});

  @override
  State<checkboxscreen> createState() => _checkboxscreenState();
}

class _checkboxscreenState extends State<checkboxscreen> {
  bool agree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      ListTile(
        leading: Checkbox(value: agree, onChanged: (bool? value){
          setState(() {
            agree = value!;
          });
        },),
        title: Text('Agree /Disagree'),
      )),
    );
  }
}