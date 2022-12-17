import 'package:cloud_firestore/cloud_firestore.dart';

class Berita {
  String name;
  String image;
  String text;
  String title;

  Berita({
    required this.image,
    required this.text,
    required this.title,
    required this.name,
  });

  Map<String, dynamic> tojson() {
    return {
      'image': image,
      'name': name,
      'text': text,
      'title': title,
    };
  }

  factory Berita.fromSnapshot(
      QueryDocumentSnapshot<Map<String, dynamic>> json) {
    return Berita(
      image: json['image'],
      text: json['text'],
      name: json['name'],
      title: json['title'],
    );
  }
}
