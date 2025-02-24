import 'package:flutter/material.dart';

class Switchscreen extends StatefulWidget {
  const Switchscreen({super.key});

  @override
  State<Switchscreen> createState() => _SwitchscreenState();
}

class _SwitchscreenState extends State<Switchscreen> {
  bool lighton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Switch(
              value: lighton,
              onChanged: (bool value) {
                setState(() {
                  lighton = value;
                });
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(lighton ? 'Light on' : 'Light of'),
                  duration: Duration(seconds: 1),
                ));
              }),
        ),
      ),
    );
  }
}
