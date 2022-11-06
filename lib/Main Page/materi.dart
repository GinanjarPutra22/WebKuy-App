import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class materi extends StatelessWidget {
  const materi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.menu),
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
    );
  }
}
