import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:web_kuy/BottomNavBar.dart';
import 'package:web_kuy/Main%20Page/menu.dart';
import 'package:web_kuy/daftar_masuk/daftar_screen.dart';
import 'package:web_kuy/splash/splash_01.dart';

class masuk_screen extends StatefulWidget {
  const masuk_screen({Key? key}) : super(key: key);

  @override
  State<masuk_screen> createState() => _masuk_screenState();
}

class _masuk_screenState extends State<masuk_screen> {
  @override
  Widget build(BuildContext context) {
    return iniwidget();
  }

  Widget iniwidget() {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: ListView(children: [
        Container(
          margin: EdgeInsets.only(
            top: 45,
          ),
          child: Center(
            child: Text(
              "Web Kuy",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: "Gemunu Libre",
                  fontWeight: FontWeight.w800),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 35.33,
          ),
          child: Center(
            child: Image.asset("images/masuk-daftar.png"),
          ),
        ),

        // Daftar-----------------------------------------------------------------------
        Container(
          margin: EdgeInsets.only(top: 20, left: 30, right: 233),
          child: Text(
            "Masuk",
            style: TextStyle(
                fontSize: 34, color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
        // Kuy Daftar-----------------------------------------------------------------------
        Container(
          margin: EdgeInsets.only(top: 2, left: 30, right: 88),
          child: Text(
            "Kuy masuk untuk lanjut belajar",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        // Container BG Putih----------------------------------------------------------------
        Container(
            margin: EdgeInsets.only(top: 13),
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            width: null,
            height: 500,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 30, left: 30, top: 20),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'E-Mail'),
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 30, left: 30, top: 32),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Password'),
                    style: TextStyle(fontSize: 16),
                  ),
                ),

                // BTN Masuk-----------------------------------------------------------
                Container(
                  margin: EdgeInsets.only(top: 50, right: 45, left: 45),
                  width: 200,
                  height: 54,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ButtomNavBar()));
                        debugPrint('ElevatedButton Masuk Clicked');
                      },
                      child: Text(
                        "Masuk",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Poppins-SemiBold"),
                      )),
                  // color: Colors.white,
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 76, left: 45, right: 45),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '  Anda belum memiliki akun?  ',
                        textAlign: TextAlign.center,
                      ),
                      GestureDetector(
                        child: Text(
                          "Daftar",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.blue),
                        ),
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => daftar_screen()));
                        },
                      )
                    ],
                  ),
                )
              ],
            )),
      ]),
    );
  }
}
