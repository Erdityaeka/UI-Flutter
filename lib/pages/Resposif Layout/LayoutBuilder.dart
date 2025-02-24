import 'package:flutter/material.dart';

class LayoutbuilderScreen extends StatelessWidget {
  const LayoutbuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Row(
        children: [
          Expanded(child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Media Query: ${screenSize.width.toStringAsFixed(2)}',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'LayoutBuilder:${constraints.maxWidth}',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  textAlign: TextAlign.center,
                )
              ],
            );
          }))
        ],
      ),
    );
  }
}
