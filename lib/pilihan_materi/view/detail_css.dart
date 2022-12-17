import 'package:belajarkuy/pilihan_materi/components/htmlmodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailCss extends StatefulWidget {
  final List list;
  final int index;
  const DetailCss({required this.index, required this.list});

  @override
  State<DetailCss> createState() => _DetailCssState();
}

class _DetailCssState extends State<DetailCss> {
  late YoutubePlayerController _controller;

  @override
  Widget build(BuildContext context) {
    bool _like = false;
    final font = 'Baloo 2';
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: FirebaseFirestore.instance.collection('css').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var css =
                snapshot.data!.docs.map((e) => Html.fromSnapshot(e)).toList();
            final vidioID = YoutubePlayer.convertUrlToId(css[widget.index].yt);
            _controller = YoutubePlayerController(
                initialVideoId: vidioID!,
                flags: const YoutubePlayerFlags(autoPlay: false));
            return Scaffold(
              body: SingleChildScrollView(
                child: Container(
                  width: width,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: height * 0.30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/css.png"),
                                fit: BoxFit.cover)),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                Colors.black.withOpacity(0.9),
                                Colors.black.withOpacity(0.5),
                                Colors.black.withOpacity(0.0),
                                Colors.black.withOpacity(0.0),
                                Colors.black.withOpacity(0.5),
                                Colors.black.withOpacity(0.9),
                              ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight)),
                        ),
                      ),
                      Container(
                        width: width,
                        //margin: EdgeInsets.only(top: height * 0.5),
                        margin: EdgeInsets.only(top: 230),
                        padding: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                        ),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  css[widget.index].title,
                                  //textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: font,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            child: Icon(
                                              Icons.access_time,
                                              size: 15,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Nov 22 2022',
                                            style: TextStyle(
                                                fontFamily: font, fontSize: 12),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            child: Icon(
                                              Icons.person_outline,
                                              size: 15,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            css[widget.index].author,
                                            style: TextStyle(
                                                fontFamily: font, fontSize: 12),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              YoutubePlayer(
                                controller: _controller,
                                showVideoProgressIndicator: true,
                                onReady: () => debugPrint('Ready'),
                                bottomActions: [
                                  CurrentPosition(),
                                  ProgressBar(
                                    isExpanded: true,
                                    colors: const ProgressBarColors(
                                        playedColor: Colors.white,
                                        handleColor: Colors.white),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text(
                                  css[widget.index].text,
                                  textAlign: TextAlign.justify,
                                  style:
                                      TextStyle(fontFamily: font, fontSize: 15),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
