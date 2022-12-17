import 'package:flutter/material.dart';

import '../pilihan_materi/pagematericss.dart';
import '../pilihan_materi/pagematerihtml.dart';
import '../pilihan_materi/pagematerijs.dart';

class materi extends StatelessWidget {
  const materi({super.key});

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
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30, left: 20, right: 20),
            width: 360,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(),
                  width: 146,
                  // height: 20,
                  // color: Colors.amber,
                  child: Text(
                    "Ayo belajar sekarang juga",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(),
                  // color: Colors.amber,
                  child: Image.asset(
                    "images/hero-materi.png",
                    // width: 320,
                    height: 100,
                  ),
                )
              ],
            ),
          ),

          // ----------------- Container body putih -------------------------
          Container(
            margin: EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            width: 360,
            height: 600,
            child: Column(
              children: [
                // --------------------------- HTML --------------------------------
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => pagematerihtml()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 30, left: 20, right: 20),
                    width: 315,
                    height: 110,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset(
                            "images/html5.png",
                            // width: 72,
                            // height: 72,
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(
                            left: 12,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 160,
                                // height: 70,
                                child: Text(
                                  "HTML-01",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: "Gemunu Libre",
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),

                                // height: 70,
                                child: Text(
                                  "Hyper Text Markup Language",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: "Gemunu Libre",
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                // --------------------------- CSS --------------------------------
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => pagematericss()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 30, left: 20, right: 20),
                    width: 315,
                    height: 110,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset(
                            "images/css-3.png",
                            // width: 72,
                            // height: 72,
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(
                            left: 12,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 160,
                                // height: 70,
                                child: Text(
                                  'CSS',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: "Gemunu Libre",
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),

                                // height: 70,
                                child: Text(
                                  "Cascading style sheets",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: "Gemunu Libre",
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                // --------------------------- JS --------------------------------
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => pagematerijs()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 30, left: 20, right: 20),
                    width: 315,
                    height: 110,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset(
                            "images/js.png",
                            // width: 72,
                            // height: 72,
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(
                            left: 12,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 160,
                                // height: 70,
                                child: Text(
                                  'Java Script',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: "Gemunu Libre",
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),

                                // height: 70,
                                child: Text(
                                  "Cascading style sheets",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: "Gemunu Libre",
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
