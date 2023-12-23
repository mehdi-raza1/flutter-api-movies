import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mehdifirstfast/rowcolumn.dart';
import 'package:mehdifirstfast/stackscreen.dart';

import 'Fashion_UI_practise/Fashion.dart';
import 'Reusable_widget.dart';
import 'Validation/forms_screen.dart';
import 'navigation_bottom/bottom_bar.dart';
import 'navigation_bottom/bottom_navigation.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//   Splash Screen.........

class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(milliseconds: 3000), () =>
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => bottom_navigate() ))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage('images/log.png')
            )
          ),
        ),
      ),
    );
  }
}





//
// class Home extends StatefulWidget {
//
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     appBar : AppBar(
//       title: Text('Whats App'),
//       backgroundColor: Colors.red,
//     ),
//       body: Center(
//         child: Container(
//           width: 100,
//           height: 100,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(20),
//             border: Border.all(color: Colors.black87,width: 2),
//             boxShadow: [
//               BoxShadow(
//                   color: Colors.grey.shade600,
//                 spreadRadius: 2,
//                 blurRadius: 10,
//                 offset: Offset(10,10)
//               )
//             ]
//           ),
//         ),
//       ),
//
//     );
//   }
// }
//
