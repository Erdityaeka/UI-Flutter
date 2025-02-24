import 'package:flutter/material.dart';

class onchage_textfield extends StatefulWidget {
  const onchage_textfield({super.key});

  @override
  State<onchage_textfield> createState() => _onchage_textfieldState();
}

class _onchage_textfieldState extends State<onchage_textfield> {
  String _name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
                decoration: InputDecoration(
                  hintText: 'write your name hare..',
                  labelText: 'Your name..',
                ),
                onChanged: (String value) {
                  setState(() {
                    _name = value;
                  });
                }),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text('Hello, $_name'),
                        );
                      });
                },
                child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}
