import 'package:flutter/material.dart';
import 'package:mehdifirstfast/Fashion_UI_practise/Fashion.dart';
import 'package:mehdifirstfast/Fashion_UI_practise/login_page.dart';

import '../stackscreen.dart';




class bottom_navigate extends StatefulWidget {

  @override
  State<bottom_navigate> createState() => _bottom_navigateState();
}

class _bottom_navigateState extends State<bottom_navigate> {

  int  currentindex = 0;

  void Pageshifter(int value){
    setState(() {
      currentindex = value;
    });
  }

  List <Widget> lst = [
    FashionDesign(),
    LogInPage(),
    StackScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: BottomNavigationBar(
        onTap: Pageshifter,
        currentIndex: currentindex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: '')
        ],
      ),

      body: lst.elementAt(currentindex),

    );
  }
}
