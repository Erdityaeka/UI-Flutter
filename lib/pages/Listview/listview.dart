import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black, width: 3)),
            child: Center(
                child: Text(
              '1',
              style: TextStyle(fontSize: 50),
            )),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black, width: 3)),
            child: Center(
                child: Text(
              '2',
              style: TextStyle(fontSize: 50),
            )),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black, width: 3)),
            child: Center(
                child: Text(
              '3',
              style: TextStyle(fontSize: 50),
            )),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black, width: 3)),
            child: Center(
                child: Text(
              '4',
              style: TextStyle(fontSize: 50),
            )),
          ),
        ],
      )),
    );
  }
}
