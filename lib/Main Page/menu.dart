import 'package:belajarkuy/Main%20Page/models/berita.dart';
import 'package:belajarkuy/pilihan_materi/diskusi.dart';
import 'package:flutter/material.dart';

import 'components/nav-drawer.dart';
import 'materi.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    const i = 2;
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
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
      drawer: DrawerWidget(),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 35),
                  child: ClipOval(
                    child: Image(
                        width: 52,
                        height: 52,
                        image: AssetImage('images/foto.jpeg'),
                        fit: BoxFit.cover),
                  ),
                ),
                // Container(
                //   margin: EdgeInsets.only(left: 35),
                //   width: 52,
                //   height: 52,
                //   decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(100)),
                // ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi Ginanjar',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: "Poppins-SemiBold"),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Jangan lupa belajar',
                        style: TextStyle(
                            color: Color.fromARGB(255, 223, 222, 222),
                            fontSize: 16,
                            fontFamily: "Poppins-SemiBold"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            width: null,
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
                        margin: EdgeInsets.only(left: 10, right: 10, top: 10),
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
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => materi()));
                                  },
                                  splashColor: Colors.grey,
                                  child: Center(
                                    child: Icon(
                                      Icons.library_books,
                                      color: Colors.blue,
                                      size: 35,
                                    ),
                                    // child: Image.asset(
                                    //     'assets/images/Menu-Materi.png'),
                                  ),
                                ),
                              ),
                              width: 70,
                              height: 70,
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
                        margin: EdgeInsets.only(left: 10, right: 10, top: 10),
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
                                    showAlertDialog(context);
                                  },
                                  splashColor: Colors.grey,
                                  child: Center(
                                    child: Icon(Icons.video_collection,
                                        size: 35, color: Colors.blue),
                                    // child: Image.asset(
                                    //     'assets/images/Menu-Materi.png'),
                                  ),
                                ),
                              ),
                              width: 70,
                              height: 70,
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
                        margin: EdgeInsets.only(left: 10, right: 10, top: 10),
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
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Diskusi()));
                                  },
                                  splashColor: Colors.grey,
                                  child: Center(
                                    child: Icon(Icons.people,
                                        size: 35, color: Colors.blue),
                                    // child: Image.asset(
                                    //     'assets/images/Menu-Materi.png'),
                                  ),
                                ),
                              ),
                              width: 70,
                              height: 70,
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
                  margin: EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 14, left: 17),
                        child: Text(
                          'Kuy Membaca',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 17),
                          child: Text(
                            'Mari belajar untuk mengembangkan wawasanmu',
                            style: TextStyle(
                                // fontFamily: font,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )),
                      GestureDetector(
                        onTap: () {
                          showAlertDialog(context);
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 30, left: 20, right: 20),
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
                          showAlertDialog(context);
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 20, left: 20, right: 20),
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
                          showAlertDialog(context);
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 20, left: 20, right: 20),
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
                ),
                Container(
                  margin: EdgeInsets.only(left: 22, top: 20),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 14, left: 17),
                        child: Text(
                          'Berita Menarik',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 17),
                          child: Text(
                            'Berita menarik untuk menambah wawasanmu',
                            style: TextStyle(
                                // fontFamily: font,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )),
                      const SizedBox(height: 15),
                      Berita_new()
                    ],
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

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: Text(
      "OK",
      style: TextStyle(
          color: Colors.blue,
          fontSize: 16,
          //fontFamily: font,
          fontWeight: FontWeight.w800),
    ),
    onPressed: () {
      Navigator.of(context).pop(false);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15)),
    // title: Text("My title"),
    content: Container(
      width: 200,
      height: 200,
      child: Row(
        children: [
          Container(
            // height: 280,
            width: 130,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Mohon maaf kami sedang berupaya untuk menyediakan fitur ini!',
                      style: TextStyle(
                          fontSize: 16,
                          //fontFamily: font,
                          fontWeight: FontWeight.w800),
                    )),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    "WebKuy !",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        //fontFamily: font,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Image.network(
              'https://firebasestorage.googleapis.com/v0/b/projectpremmob.appspot.com/o/alert.png?alt=media&token=8d6b6140-7316-4e59-b014-9eb514d4dc00',
              width: 100,
              height: 200,
            ),
          )
        ],
      ),
    ),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
