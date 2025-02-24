import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String message;

  const SecondScreen(this.message, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message),
            OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Kembali')),
          ],
        ),
      ),
    );
  }
}
