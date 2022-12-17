import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Diskusi extends StatelessWidget {
  const Diskusi({super.key});

  @override
  Widget build(BuildContext context) {
    final String font = 'Baloo 2';
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100), // Set this height
        child: Container(
          margin: EdgeInsets.only(top: 50),
          alignment: Alignment.center,
          color: Colors.blue,
          child: Text("Diskusi",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 40.0,
                fontFamily: 'Baloo 2',
              )),
        ),
      ),
      body: WebView(
        initialUrl: "https://discord.com/invite/xkkRJ4Ed",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
