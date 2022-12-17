import 'dart:ui';

import 'package:belajarkuy/pilihan_materi/components/htmlmodel.dart';
import 'package:belajarkuy/pilihan_materi/view/detail_html.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Main Page/materi.dart';

class pagematerihtml extends StatelessWidget {
  const pagematerihtml({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: FirebaseFirestore.instance.collection('html').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var html =
              snapshot.data!.docs.map((e) => Html.fromSnapshot(e)).toList();

          return Scaffold(
            backgroundColor: Colors.blue,
            appBar: AppBar(
              elevation: 0,
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => materi()));
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
            body: Container(
              margin: EdgeInsets.only(top: 100),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              width: null,
              height: 700,
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        print(index);
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => new DetailHtml(
                                  list: html,
                                  index: index,
                                )));
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
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
                                    width: 200,
                                    child: Text(
                                      html[index].title,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontFamily: "Gemunu Libre",
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 8),
                                    width: 200,
                                    child: Text(
                                      html[index].text,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: "Gemunu Libre",
                                          fontWeight: FontWeight.w200),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: html.length),
            ),
          );
        }
        return const Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.white,
            value: 0.20,
          ),
        );
      },
    );
  }
}
