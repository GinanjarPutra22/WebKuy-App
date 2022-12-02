import 'package:flutter/material.dart';
import 'package:web_kuy/Main%20Page/materi.dart';
import 'package:web_kuy/Main%20Page/menu.dart';
import 'package:web_kuy/Main%20Page/profil.dart';
import 'package:web_kuy/Main%20Page/quiz.dart';
import 'package:web_kuy/daftar_masuk/daftar_screen.dart';
import 'package:web_kuy/materi-html/pagemateri1.dart';
import 'package:web_kuy/splash/splash_01.dart';
import 'package:web_kuy/splash/splash_02.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    builder: (context, child) {
      return Directionality(textDirection: TextDirection.ltr, child: child!);
    },
    title: 'GNav',
    theme: ThemeData(
      primaryColor: Colors.grey[800],
    ),
    home: splash_01()));

// class AppWrapper extends StatefulWidget {
//   const AppWrapper({super.key});

//   @override
//   State<AppWrapper> createState() => _AppWrapperState();
// }

// class _AppWrapperState extends State<AppWrapper> {
//   int selectedIndex = 0;

//   final List<Widget> widgetoption = [
//     menu(),
//     materi(),
//     quiz(),
//     profil(),
//   ];

//   onItemTap(int index) {
//     setState(() {
//       selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: Container(
//         decoration: BoxDecoration(
//           color: Colors.blue,
//           boxShadow: [
//             BoxShadow(
//               blurRadius: 20,
//               color: Colors.black.withOpacity(.1),
//             )
//           ],
//         ),
//         child: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
//             child: GNav(
//               rippleColor: Colors.grey[300]!,
//               hoverColor: Colors.grey[100]!,
//               gap: 8,
//               activeColor: Colors.black,
//               iconSize: 24,
//               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//               duration: Duration(milliseconds: 400),
//               tabBackgroundColor: Colors.grey[100]!,
//               color: Colors.black,
//               tabs: [
//                 GButton(
//                   icon: Icons.home,
//                   text: 'Home',
//                 ),
//                 GButton(
//                   icon: Icons.book,
//                   text: 'Materi',
//                 ),
//                 GButton(
//                   icon: Icons.quiz,
//                   text: 'Quiz',
//                 ),
//                 GButton(
//                   icon: Icons.people,
//                   text: 'Profile',
//                 ),
//               ],
//               selectedIndex: selectedIndex,
//               onTabChange: onItemTap,
//             ),
//           ),
//         ),
//       ),
//       body: widgetoption[selectedIndex],
//     );
//   }
// }
