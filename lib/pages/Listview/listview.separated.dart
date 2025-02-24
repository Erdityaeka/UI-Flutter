import 'package:flutter/material.dart';

class ListviewseparatedScreen extends StatelessWidget {
  ListviewseparatedScreen({super.key});
  final List<int> numberlist = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.separated(
              itemCount: numberlist.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.black, width: 3),
                  ),
                  child: Center(
                    child: Text(
                      '${numberlist[index]}',
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                );
              }, separatorBuilder: (BuildContext context, int index) { return Divider(); },)),
    );
  }
}
