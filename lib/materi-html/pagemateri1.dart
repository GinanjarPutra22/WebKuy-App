import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:web_kuy/Main%20Page/materi.dart';
import 'package:web_kuy/Main%20Page/menu.dart';
import 'package:web_kuy/main.dart';

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
              Navigator.pushReplacement(
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
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => materi()));
            },
            child: Container(
              margin: EdgeInsets.only(top: 30),
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
                                color: Colors.blue,
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
                                color: Colors.blue,
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
    );
  }
}
