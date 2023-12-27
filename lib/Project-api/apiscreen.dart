import 'package:flutter/material.dart';

import 'movieStack_reusable.dart';



class apiscreen_movie extends StatefulWidget {


  @override
  State<apiscreen_movie> createState() => _apiscreen_movieState();
}

class _apiscreen_movieState extends State<apiscreen_movie> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
        return const movieStack(
          image: 'images/boy.png',
          MovieName: 'Hello WOrld',
          startDate: '20/3/2020',
          network: 'bye bye' ,
          Status: 'DOne',
        );
      },)
    );
  }
}
