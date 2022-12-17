import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'belajar_model.dart';

class Belajarku extends StatefulWidget {
  const Belajarku({super.key});

  @override
  State<Belajarku> createState() => _BelajarkuState();
}

class _BelajarkuState extends State<Belajarku> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: FirebaseFirestore.instance.collection('belajar').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var belajar =
              snapshot.data!.docs.map((e) => Belajar.fromSnapshot(e)).toList();

          return Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(100), // Set this height
              child: Container(
                margin: EdgeInsets.only(top: 50),
                alignment: Alignment.center,
                child: Text("Cendekia",
                    style: TextStyle(
                      color: Color.fromRGBO(1, 180, 220, 1),
                      fontWeight: FontWeight.w700,
                      fontSize: 40.0,
                      fontFamily: 'Baloo 2',
                    )),
              ),
            ),
            body: ListView.separated(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 16.0, left: 16.0, top: 10),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                    colors: [
                                      Color.fromRGBO(1, 180, 220, 1),
                                      Color.fromRGBO(138, 233, 239, 1),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(138, 233, 239, 1),
                                    blurRadius: 12,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                            ),
                            Positioned.fill(
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.all(15),
                                      child: ClipOval(
                                        child: Image.network(
                                          belajar[index].image,
                                        ),
                                      ),
                                    ),
                                    flex: 2,
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          belajar[index].title,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          belajar[index].title,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: Colors.white,
                                            // fontFamily: font,
                                          ),
                                        ),
                                        SizedBox(height: 16),
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.person_outline_rounded,
                                              color: Colors.white,
                                              size: 16,
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Flexible(
                                              child: Text(
                                                belajar[index].subtitle,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text(
                                          "Cendekia",
                                          style: TextStyle(
                                              color: Colors.white,
                                              // fontFamily: font,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w800),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: belajar.length),
          );
        }
        return Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.white,
            value: 0.20,
          ),
        );
      },
    );
  }
}

//
