import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mehdifirstfast/Project-api/Api_Services.dart';


class movieData extends StatefulWidget {
  const movieData({required this.movieId });

  final int movieId;
  @override
  State<movieData> createState() => _movieDataState();
}

class _movieDataState extends State<movieData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
       // actions: [
       //   Icon(Icons.accessibility_new_sharp)
       // ],
       // automaticallyImplyLeading: false,
        title: FutureBuilder(
          future: ApiServices.descriptionApi(widget.movieId),
          builder: (context, snapshot) {

            if(snapshot.connectionState == ConnectionState.waiting){
              return const CircularProgressIndicator();
            }

            if(snapshot.hasError){
              return Icon(Icons.error, color: Colors.red,);
            }


            if(snapshot.hasData){
              Map map = jsonDecode('${snapshot.data}');
              String movieName = map['tvShow']["name"];
              return Text(movieName);
            }

            return Container();

          },
        ),
      ),

      body: FutureBuilder(
        future: ApiServices.descriptionApi(widget.movieId),
        builder: (context, snapshot) {

          if(snapshot.connectionState == ConnectionState.waiting){
            return const CircularProgressIndicator();
          }

          if(snapshot.hasError){
            return Icon(Icons.error, color: Colors.red,);
          }


          if(snapshot.hasData){
            Map map = jsonDecode('${snapshot.data}');
            String movieName = map['tvShow']["name"];
            return Center(
              child: Text(movieName),
            );
          }

          return Container();

        },
      ),
    );
  }
}
