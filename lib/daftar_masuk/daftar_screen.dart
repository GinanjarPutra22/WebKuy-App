import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:web_kuy/daftar_masuk/masuk_screen.dart';
import 'package:web_kuy/splash/splash_01.dart';

class daftar_screen extends StatefulWidget {
  const daftar_screen({Key? key}) : super(key: key);

  @override
  State<daftar_screen> createState() => _daftar_screenState();
}

class _daftar_screenState extends State<daftar_screen> {
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
            "Daftar",
            style: TextStyle(
                fontSize: 34, color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
        // Kuy Daftar-----------------------------------------------------------------------
        Container(
          margin: EdgeInsets.only(top: 2, left: 30, right: 88),
          child: Text(
            "Kuy daftar untuk lanjut belajar",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        // Container BG Putih----------------------------------------------------------------
        Container(
            margin: EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            width: null,
            height: 490,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 30, left: 30, top: 20),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Nama'),
                    style: TextStyle(fontSize: 16),
                  ),
                ),
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
                                builder: (context) => daftar_screen()));
                        debugPrint('ElevatedButton Daftar Clicked');
                      },
                      child: Text(
                        "Daftar",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Poppins-SemiBold"),
                      )),
                  // color: Colors.white,
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 76, left: 55, right: 55),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        ' Anda sudah memiliki akun? ',
                        textAlign: TextAlign.center,
                      ),
                      GestureDetector(
                        child: Text(
                          "Masuk",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.blue),
                        ),
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => masuk_screen()));
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
