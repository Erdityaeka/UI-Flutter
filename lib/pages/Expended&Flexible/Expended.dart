import 'package:flutter/material.dart';

class ExpendedScreen extends StatelessWidget {
  const ExpendedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 1, //height
              child: Container(
            color: Colors.red,
          )),
          Expanded(
            flex: 2, //height
              child: Container(
            color: Colors.blue,
          )),
          Expanded(
            flex: 3, //height
              child: Container(
            color: Colors.yellow,
          )),
          Expanded(
            flex: 4, //height
              child: Container(
            color: Colors.black,
          )),
        ],
      )),
    );
  }
}
