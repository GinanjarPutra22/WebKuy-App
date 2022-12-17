import 'package:flutter/material.dart';

import '../daftar_masuk/daftar_screen.dart';
import '../daftar_masuk/masuk_screen.dart';

class splash_02 extends StatefulWidget {
  const splash_02({Key? key}) : super(key: key);

  @override
  State<splash_02> createState() => _splash_02State();
}

class _splash_02State extends State<splash_02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IniSplash02(),
      backgroundColor: Colors.blue,
    );
  }

  IniSplash02() {
    return ListView(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 24, top: 67, right: 24),
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
        Container(
          margin: EdgeInsets.only(top: 13, left: 90, right: 90),
          alignment: Alignment.center,
          child: Center(
            child: Text(
              "Belajar pemrogaman Web Kapan saja, dimana saja",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),

        // BTN-Masuk
        Container(
          margin: EdgeInsets.only(top: 117, right: 45, left: 45),
          width: 200,
          height: 54,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 38, 146, 235),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => masuk_screen()));
                debugPrint('ElevatedButton Daftar Clicked');
              },
              child: Text(
                "Masuk",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: "Poppins-SemiBold"),
              )),
          // color: Colors.blue
        ),
        // BTN-Daftar
        Container(
          margin: EdgeInsets.only(top: 16, right: 45, left: 45),
          width: 200,
          height: 54,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => daftar_screen()));
                debugPrint('ElevatedButton Daftar Clicked');
              },
              child: Text(
                "Daftar",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontFamily: "Poppins-SemiBold"),
              )),
          // color: Colors.white,
        )
      ],

      // Container(
      //   decoration: BoxDecoration(
      //       color: Color.fromARGB(255, 0, 93, 202),
      //       gradient: LinearGradient(colors: [
      //         (new Color.fromARGB(255, 0, 93, 202)),
      //         (new Color.fromARGB(255, 132, 172, 249))
      //       ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),

      // ),

      // child(

      // child: Column(
      //   children[]: Image.asset("images/img_splash01.png"),
      // ),
      // ),
    );
  }
}


//  Container(
//           decoration: BoxDecoration(
//               color: Color.fromARGB(255, 0, 93, 202),
//               gradient: LinearGradient(colors: [
//                 (new Color.fromARGB(255, 0, 93, 202)),
//                 (new Color.fromARGB(255, 132, 172, 249))
//               ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
//         ),