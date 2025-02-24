import 'package:flutter/material.dart';

class buttonscren extends StatefulWidget {
  const buttonscren({super.key});

  @override
  State<buttonscren> createState() => _buttonscrenState();
}

class _buttonscrenState extends State<buttonscren> {
  String? language;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
              onPressed: () {}, child: Text('ElevatedButton')), //elevatedbutton
          TextButton(onPressed: () {}, child: Text('Text Button')), //Textbutton
          OutlinedButton(
              onPressed: () {}, child: Text('OutlinedButton')), //OutlinedButton
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.volume_up),
            tooltip: 'Increase volume by 10',
          ), //IconButton

          //Dropdown
          Text('Dropdown'),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: DropdownButton<String>(
                items: <DropdownMenuItem<String>>[
                  DropdownMenuItem<String>(
                    child: Text('Dart'),
                    value: 'Dart',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Java'),
                    value: 'Java',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Kotlin'),
                    value: 'Kotlin',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('php'),
                    value: 'php',
                  ),
                  
                ],
                value: language,
                hint: Text('Select Languege'),
                onChanged: (String? value) {
                  setState(() {
                    language = value;
                  });
                }),
                
          )
          
        ],
      )),
    );
  }
}
