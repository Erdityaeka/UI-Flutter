import 'package:flutter/material.dart';
import 'package:profile/pages/Expended&Flexible/Expended.dart';
import 'package:profile/pages/Expended&Flexible/flexible.dart';
import 'package:profile/pages/Navigation/firstscreen.dart';
import 'package:profile/pages/Resposif%20Layout/LayoutBuilder.dart';
import 'package:profile/pages/Resposif%20Layout/MediaQuery.dart';
import 'package:profile/pages/Resposif%20Layout/resposive_layout.dart';
import 'package:profile/pages/button/Button.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue, // Untuk warna utama tema
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue, // Warna latar belakang AppBar
          foregroundColor: Colors.white, // Warna teks dan ikon AppBar
        ),
      ),
      home: buttonscren(),
    );
  }
}
