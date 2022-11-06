import 'package:flutter/material.dart';
import 'package:web_kuy/daftar_masuk/daftar_screen.dart';
import 'package:web_kuy/splash/splash_01.dart';
import 'package:web_kuy/splash/splash_02.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash_01(),
    );
  }
}
