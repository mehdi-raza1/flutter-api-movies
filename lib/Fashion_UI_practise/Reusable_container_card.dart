import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({
    Key? key,
    required this.urlimage
  }) : super(key: key);


  final String urlimage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 90,
     // color: Colors.black,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
            image: NetworkImage(urlimage)
        )
      ),
    );
  }
}

