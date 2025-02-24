import 'package:flutter/material.dart';

class imagescreen extends StatelessWidget {
  const imagescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            //gambar dari internet
            Image.network(
                'https://static.vecteezy.com/system/resources/previews/026/783/680/original/lfc-black-logo-liverpool-logo-free-vector.jpg'),

            //gambar dengan menggunkana asses
            Image.asset('assets/logoliv.jpg', width: 100, height: 100,)
          ],
        ),
      ),
    );
  }
}
