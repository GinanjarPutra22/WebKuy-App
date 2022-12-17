import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'BottomNavBar.dart';
import 'daftar_masuk/restapi/Loading.dart';
import 'splash/splash_01.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

FirebaseAuth _auth = FirebaseAuth.instance;

Stream<User?> get streamAuthStatus => _auth.authStateChanges();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: streamAuthStatus,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          print(snapshot.data);
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            home: snapshot.data != null && snapshot.data!.emailVerified == true
                ? ButtomNavBar()
                : splash_01(),
          );
        }
        return Loading();
      },
    );
  }
}
