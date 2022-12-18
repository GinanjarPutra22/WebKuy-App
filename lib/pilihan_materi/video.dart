import 'package:belajarkuy/Main%20Page/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:webview_flutter/webview_flutter.dart';

class video extends StatelessWidget {
  const video({super.key});

  @override
  Widget build(BuildContext context) {
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
          'video',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: "Gemunu Libre",
              fontWeight: FontWeight.w800),
        ),
      ),
      body: WebView(
        initialUrl:
            "https://www.youtube.com/playlist?list=PLFIM0718LjIVuONHysfOK0ZtiqUWvrx4F",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
