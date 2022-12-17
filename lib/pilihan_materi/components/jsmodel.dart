import 'package:cloud_firestore/cloud_firestore.dart';

class JavaScript {
  String author;
  String text;
  String title;
  String yt;

  JavaScript({
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

  factory JavaScript.fromSnapshot(
      QueryDocumentSnapshot<Map<String, dynamic>> json) {
    return JavaScript(
      text: json['text'],
      title: json['title'],
      author: json['author'],
      yt: json['yt'],
    );
  }
}
