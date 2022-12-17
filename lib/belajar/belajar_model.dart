import 'package:cloud_firestore/cloud_firestore.dart';

class Belajar {
  String image;
  String subtitle;
  String title;

  Belajar({
    required this.image,
    required this.subtitle,
    required this.title,
  });

  Map<String, dynamic> tojson() {
    return {
      'image': image,
      'subtitle': subtitle,
      'title': title,
    };
  }

  factory Belajar.fromSnapshot(
      QueryDocumentSnapshot<Map<String, dynamic>> json) {
    return Belajar(
      image: json['image'],
      subtitle: json['subtitle'],
      title: json['title'],
    );
  }
}
