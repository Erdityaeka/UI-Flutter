import 'package:flutter/material.dart';

class controller_textfield extends StatefulWidget {
  const controller_textfield({super.key});

  @override
  State<controller_textfield> createState() => _controller_textfieldState();
}

class _controller_textfieldState extends State<controller_textfield> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'write your name',
                labelText: 'Your name...',
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              showDialog(context: context, builder: (context){
                return AlertDialog(content: Text('Hello, ${_controller.text}'),);
              });
            }, child:  Text('Sumbit'))
          ],
        ),
      ),
    );
  }

//membersihkan sumber daya 
@override
void dispose(){
  _controller.dispose();
  super.dispose();
}
}