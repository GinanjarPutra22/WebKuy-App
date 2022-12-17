import 'dart:async';
import 'package:belajarkuy/splash/splash_02.dart';
import 'package:flutter/material.dart';

class splash_01 extends StatefulWidget {
  const splash_01({Key? key}) : super(key: key);

  @override
  State<splash_01> createState() => _splash_01State();
}

class _splash_01State extends State<splash_01> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return new Timer(duration, loginRoute);
  }

  loginRoute() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => splash_02()));
  }

  @override
  Widget build(BuildContext context) {
    return IniWidget();
  }

  IniWidget() {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 24, top: 154, right: 24),
            child: Center(
              child: Image.asset("images/img_splash01.png"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 13),
            child: Center(
              child: Text(
                "Web Kuy!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: "Gemunu Libre",
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
        ],
        // children: [
        //   Container(
        //     decoration: BoxDecoration(
        //         color: Color.fromARGB(255, 0, 93, 202),
        //         gradient: LinearGradient(colors: [
        //           (new Color.fromARGB(255, 0, 93, 202)),
        //           (new Color.fromARGB(255, 132, 172, 249))
        //         ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
        //   ),
        //   Container(
        //     margin: EdgeInsets.only(top: 154),
        //     child: Image.asset("images/img_splash01.png"),
        //   ),
        //   Container(
        //     margin: EdgeInsets.only(top: 15),
        //     child: Text(
        //       "Web Kuy!",
        //       style: TextStyle(
        //           fontSize: 40,
        //           fontFamily: "Gemunu Libre",
        //           fontWeight: FontWeight.w800),
        //     ),
        //   ),
        // ],
      ),
    );
  }
}
