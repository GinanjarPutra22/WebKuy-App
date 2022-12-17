import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Main Page/materi.dart';

class pagemateri1 extends StatelessWidget {
  const pagemateri1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => materi()));
            },
            icon: new Icon(Icons.arrow_back, color: Colors.white)),
        centerTitle: true,
        title: Text(
          'HTML',
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
          // -----------------------------01----------------------------------
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => materi()));
            },
            child: Container(
              margin: EdgeInsets.only(top: 30, left: 20, right: 20),
              width: 250,
              height: 110,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 25),
                          width: 160,
                          // height: 70,
                          child: Text(
                            "HTML-01",
                            maxLines: 4,
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 14,
                                fontFamily: "Gemunu Libre",
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 4),
                          width: 160,
                          // height: 70,
                          child: Text(
                            "Pengenalan Dasar HTML untuk Pemula",
                            maxLines: 4,
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18,
                                fontFamily: "Gemunu Libre",
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          // -----------------------------02----------------------------------
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => materi()));
            },
            child: Container(
              margin: EdgeInsets.only(top: 15, left: 20, right: 20),
              width: 250,
              height: 110,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 25),
                          width: 160,
                          // height: 70,
                          child: Text(
                            "HTML-02",
                            maxLines: 4,
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 14,
                                fontFamily: "Gemunu Libre",
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 4),
                          width: 160,
                          // height: 70,
                          child: Text(
                            "Apa itu Tag, Elemen, dan Atribut dalam HTML?",
                            maxLines: 4,
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18,
                                fontFamily: "Gemunu Libre",
                                fontWeight: FontWeight.w400),
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
    );
  }
}
