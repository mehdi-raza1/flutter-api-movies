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
      width: 50,
     // color: Colors.black,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(urlimage)
        )
      ),
    );
  }
}

