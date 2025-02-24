import 'package:flutter/material.dart';

class ListviewDinamisScreen extends StatelessWidget {
  ListviewDinamisScreen({super.key});

  final List<int> numberlist = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
            children: numberlist.map((number) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black, width: 3),
            ),
            child: Center(
              child: Text(
                '$number',
                style: TextStyle(fontSize: 50),
              ),
            ),
          );
        }).toList() //harus ketik too list agar berfungsi numberlist.map((number)
            ),
      ),
    );
  }
}
