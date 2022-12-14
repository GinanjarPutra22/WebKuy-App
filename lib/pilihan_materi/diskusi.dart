import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../Main Page/menu.dart';

class Diskusi extends StatelessWidget {
  const Diskusi({super.key});

  @override
  Widget build(BuildContext context) {
    final String font = 'Baloo 2';
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => menu()));
            },
            icon: new Icon(Icons.arrow_back, color: Colors.white)),
        centerTitle: true,
        title: Text(
          'Diskusi Discord',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: "Gemunu Libre",
              fontWeight: FontWeight.w800),
        ),
      ),
      body: WebView(
        initialUrl:
            "https://discord.com/channels/1054050505678147626/1054050506831564841",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
