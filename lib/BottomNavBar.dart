import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'Main Page/materi.dart';
import 'Main Page/menu.dart';
import 'Main Page/profil.dart';
import 'Main Page/quiz.dart';

class ButtomNavBar extends StatefulWidget {
  const ButtomNavBar({super.key});

  @override
  State<ButtomNavBar> createState() => Navbar();
}

class Navbar extends State<ButtomNavBar> {
  int _selectedIndex = 0;

  final screens = [
    Center(child: menu()),
    Center(child: materi()),
    Center(child: quiz()),
    Center(child: profil())
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(247, 249, 248, 248),
      //navbar
      bottomNavigationBar: Container(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 6.0),
          child: Container(
            child: GNav(
              backgroundColor: Colors.transparent,
              color: Colors.black,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.blue,
              padding: EdgeInsets.all(10),
              tabs: [
                GButton(
                  icon: Icons.home,
                ),
                GButton(
                  icon: Icons.book,
                ),
                GButton(
                  icon: Icons.quiz,
                ),
                GButton(icon: Icons.people)
              ],
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
      // body: Center(child: screens.elementAt(_selectedIndex)),
      body: PageStorage(
        child: screens[_selectedIndex],
        bucket: bucket,
      ),
    );
  }
}
