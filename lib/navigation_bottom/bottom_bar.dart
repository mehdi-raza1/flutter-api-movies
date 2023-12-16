import 'package:flutter/material.dart';




class Bottom_bar extends StatefulWidget {

  @override
  State<Bottom_bar> createState() => _Bottom_barState();
}

class _Bottom_barState extends State<Bottom_bar> {

  int  currentindex = 0;

  OnTab(int value){
    setState(() {
      currentindex = value;
    });
  }

  List <Widget> lst = [
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blue,
      child: Center(child:Text('Home')),
    ),
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.yellow,
      child: Center(child:Text('Profile')),
    ),
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.green,
      child: Center(child:Text('Setting')),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Navigation Bottom Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: OnTab,
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
