import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'ContainerReusableWidget.dart';

class Reusablewidget extends StatefulWidget {
  @override
  State<Reusablewidget> createState() => _ReusablewidgetState();
}

class _ReusablewidgetState extends State<Reusablewidget> {

  List names=["mehdi", "raza","naushad","hussain"];
  List colors= [Colors.red,Colors.blue,Colors.green,Colors.yellow];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
        return ContainerReusableWidget(
          ContainerColor: colors[index],
          ContainerText: names[index],
        );
      },)
    );
  }
}
