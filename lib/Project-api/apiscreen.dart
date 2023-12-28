import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mehdifirstfast/Project-api/Api_Services.dart';

import 'movieStack_reusable.dart';



class apiscreen_movie extends StatefulWidget {


  @override
  State<apiscreen_movie> createState() => _apiscreen_movieState();
}

class _apiscreen_movieState extends State<apiscreen_movie> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: FutureBuilder(
        future: ApiServices.futureApi(),
        builder: (context, snapshot) {

        if(snapshot.connectionState == ConnectionState.waiting){
              return const Center(child: CircularProgressIndicator(),);
        }

        if(snapshot.hasData){
          Map map = jsonDecode("${snapshot.data}");
          List myData = map["tv_shows"];

          return ListView.builder(
            itemCount:  myData.length,
              itemBuilder: (context, index) {

              String movieName =  myData[index]["name"];
              String movieImage =  myData[index]["image_thumbnail_path"];
              String movieNetwork =  myData[index]["network"];
              String movieDate =  myData[index]["start_date"];
              String movieStatus =  myData[index]["status"];

                return movieStack(
                      image: movieImage,
                      MovieName: movieName,
                      startDate: movieNetwork,
                      network: movieDate,
                      Status: movieStatus,
                    );
                  },);

        }

        if(snapshot.hasError){
          return Icon(Icons.error,color: Colors.red,);
        }

        return Container();
      },)
    );
  }
}
