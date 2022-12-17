import 'package:cloud_firestore/cloud_firestore.dart';

class Html {
  String author;
  String text;
  String title;
  String yt;

  Html({
    required this.text,
    required this.title,
    required this.author,
    required this.yt,
  });

  Map<String, dynamic> tojson() {
    return {
      'name': author,
      'text': text,
      'title': title,
      'yt': yt,
    };
  }

  factory Html.fromSnapshot(QueryDocumentSnapshot<Map<String, dynamic>> json) {
    return Html(
      text: json['text'],
      title: json['title'],
      author: json['author'],
      yt: json['yt'],
    );
  }
}
