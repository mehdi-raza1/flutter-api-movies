import 'package:flutter/material.dart';


class row extends StatefulWidget {


  @override
  State<row> createState() => _rowState();
}

class _rowState extends State<row> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Widget'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 80,height: 80,color: Colors.red,),
            Container(width: 80,height: 40,color: Colors.yellow,),
            Container(width: 80,height: 80,color: Colors.green,),
          ],
        ),
      ),
    );
  }
}
