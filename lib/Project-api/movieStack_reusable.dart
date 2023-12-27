import 'package:flutter/material.dart';



class movieStack extends StatelessWidget {
  const movieStack({
    Key? key,

    required this.image,
    required this.MovieName,
    required this.network,
    required this.startDate,
    required this.Status

  }) : super(key: key);

  final String image;
  final String MovieName;
  final String startDate;
  final String network;
  final String Status;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.black,
          width: double.infinity,
          height: 80,
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Row(
            children: [
              Container(
                width: 120,
                height: 60,
                decoration: BoxDecoration(
                    //color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: NetworkImage(image)

                    )
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text(MovieName,style: TextStyle(color: Colors.white),),
                    Text(startDate,style: TextStyle(color: Colors.white),),
                    Text(network,style: TextStyle(color: Colors.white),),
                    Text(Status,style: TextStyle(color: Colors.white),)
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

