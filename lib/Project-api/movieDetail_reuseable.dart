import 'package:flutter/material.dart';



class movieContainer extends StatefulWidget {
  const movieContainer({
    required this.urlName,
    required this.movieName,
});
final String urlName;
final String movieName;
  @override
  State<movieContainer> createState() => _movieContainerState();
}

class _movieContainerState extends State<movieContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: NetworkImage('')
                    )
                ),
              ),
            Text('Name : ' )

            ],
          )


        ],
      ),
    );
  }
}
