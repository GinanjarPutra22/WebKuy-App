import 'package:belajarkuy/Main%20Page/adddata.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'components/nav-drawer.dart';

// import 'components/nav-drawer.dart';

class profil extends StatefulWidget {
  const profil({super.key});

  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Profil',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: "Gemunu Libre",
              fontWeight: FontWeight.w800),
        ),
      ),
      body: ListView(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (() {
          backgroundColor:
          // Color.fromARGB(255, 255, 187, 0);
          // print('object');
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => adddata()))
              .then((value) {
            setState(() {});
          });
        }),
      ),
      drawer: DrawerWidget(),
    );
  }
}
