import 'package:flutter/material.dart';
import 'package:profile/pages/Navigation/scondscreen.dart';

class Firstscreen extends StatelessWidget {
  const Firstscreen({super.key});
  final String message = 'Hello from firstscreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondScreen(message)));
            },
            child: Text('Pindah Screen')),
      ),
    );
  }
}
