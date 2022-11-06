import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:web_kuy/daftar_masuk/daftar_screen.dart';
import 'package:web_kuy/daftar_masuk/masuk_screen.dart';
import 'package:web_kuy/splash/splash_01.dart';
import 'package:web_kuy/splash/splash_02.dart';

class menu extends StatelessWidget {
  const menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text(
          'Web Kuy!',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: "Gemunu Libre",
              fontWeight: FontWeight.w800),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: new Icon(Icons.notifications, color: Colors.white))
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 24),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 21),
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Column(
                    children: [
                      Text(
                        'Hi Ginanjar',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontFamily: "Poppins-SemiBold"),
                      ),
                      Text(
                        'Jangan lupa belajar',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: "Poppins-SemiBold"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            width: null,
            height: 490,
            child: Column(
              children: [
                // --------------------------Card Menu------------------------------------

                Container(
                  margin: EdgeInsets.only(top: 27),
                  width: 315,
                  height: 143,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // ---------Materi----------
                      Container(
                        margin: EdgeInsets.only(left: 0, top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              // decoration: BoxDecoration(
                              //     boxShadow: [BoxShadow(blurRadius: 25.0)]),
                              child: Card(
                                margin: EdgeInsets.all(2),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                masuk_screen()));
                                  },
                                  splashColor: Colors.grey,
                                  child: Center(
                                    child: Icon(Icons.library_books,
                                        color: Colors.blue),
                                    // child: Image.asset(
                                    //     'assets/images/Menu-Materi.png'),
                                  ),
                                ),
                              ),
                              width: 60,
                              height: 60,
                            ),
                            Container(
                              child: Text(
                                'Materi',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // ---------Video----------
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Card(
                                margin: EdgeInsets.all(2),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                masuk_screen()));
                                  },
                                  splashColor: Colors.grey,
                                  child: Center(
                                    child: Icon(Icons.video_collection,
                                        color: Colors.blue),
                                    // child: Image.asset(
                                    //     'assets/images/Menu-Materi.png'),
                                  ),
                                ),
                              ),
                              width: 60,
                              height: 60,
                            ),
                            Container(
                              child: Text(
                                'Video',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // ---------Diskusi----------
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Card(
                                margin: EdgeInsets.all(2),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                masuk_screen()));
                                  },
                                  splashColor: Colors.grey,
                                  child: Center(
                                    child: Icon(Icons.video_collection,
                                        color: Colors.blue),
                                    // child: Image.asset(
                                    //     'assets/images/Menu-Materi.png'),
                                  ),
                                ),
                              ),
                              width: 60,
                              height: 60,
                            ),
                            Container(
                              child: Text(
                                'Diskusi',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 22, right: 236, top: 30),
                  child: Text(
                    'Kuy Membaca',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),

                // Card Bacaan------------------------
                // Container(
                //   width: 300,
                //   child: ListView(
                //     scrollDirection: Axis.horizontal,
                //     children: [
                //       GestureDetector(
                //           // child: Container(
                //           //   // height: 90,
                //           //   child: Row(
                //           //     children: [
                //           //       Container(),
                //           //       Column(
                //           //         children: [Text('data'), Text('data')],
                //           //       )
                //           //     ],
                //           //   ),
                //           // ),
                //           ),

                //       // color: Colors.blue,
                //     ],
                //   ),
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}
