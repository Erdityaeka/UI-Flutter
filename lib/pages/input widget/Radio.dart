import 'package:flutter/material.dart';

class radioscreen extends StatefulWidget {
  const radioscreen({super.key});

  @override
  State<radioscreen> createState() => _radioscreenState();
}

class _radioscreenState extends State<radioscreen> {
  String? language;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Radio(
              value: 'Dart',
              groupValue: language,
              onChanged: (String? value) {
                setState(() {
                  language = value;
                  showSnackbar();
                });
              },
            ),
            title: Text('Dart'),
          ),
          ListTile(
            leading: Radio(
              value: 'Php',
              groupValue: language,
              onChanged: (String? value) {
                setState(() {
                  language = value;
                  showSnackbar();
                });
              },
            ),
            title: Text('Php'),
          ),
          ListTile(
            leading: Radio(
              value: 'Jva',
              groupValue: language,
              onChanged: (String? value) {
                setState(() {
                  language = value;
                  showSnackbar();
                });
              },
            ),
            title: Text('Jva'),
          ),
        ],
      )),
    );
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('$language selected'),
      duration: Duration(seconds: 1),
    ));
  }
}
