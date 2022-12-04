import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:web_kuy/splash/splash_01.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splash_01(),
    );
  }
}
