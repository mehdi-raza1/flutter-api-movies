 import 'package:flutter/material.dart';

class Columnscreen extends StatefulWidget {

  @override
  State<Columnscreen> createState() => _ColumnscreenState();
}

class _ColumnscreenState extends State<Columnscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coulumn Screen'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('fahad'),
            Text('2'),
            Text('fahad'),
          ],        ),
      ),
    );
  }
}


