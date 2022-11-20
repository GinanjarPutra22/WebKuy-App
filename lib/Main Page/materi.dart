import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:web_kuy/Main%20Page/menu.dart';
import 'package:web_kuy/materi-html/pagemateri1.dart';

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
              children: [
                Container(
                  margin: EdgeInsets.only(right: 12, left: 12),
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
                  // color: Colors.amber,
                  child: Image.asset(
                    "images/hero-materi.png",
                    // width: 320,
                    height: 146,
                  ),
                )
              ],
            ),
          ),

          // ----------------- Container body putih -------------------------
          Container(
            margin: EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(16)),
            width: 360,
            height: 490,
            child: Column(
              children: [
                // --------------------------- HTML --------------------------------
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => pagemateri1()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    width: 315,
                    height: 110,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8)),
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
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(
                            left: 12,
                          ),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 30),
                                child: Text(
                                  'HTML',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontFamily: "Gemunu Libre",
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 4),
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
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => menu()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    width: 315,
                    height: 110,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8)),
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
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(
                            left: 12,
                          ),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 30),
                                child: Text(
                                  'CSS',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontFamily: "Gemunu Libre",
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 4),
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
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => menu()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    width: 315,
                    height: 110,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8)),
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
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(
                            left: 12,
                          ),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 30),
                                child: Text(
                                  'Java Script',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontFamily: "Gemunu Libre",
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 4),
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
