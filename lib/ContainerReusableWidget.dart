import 'package:flutter/material.dart';

class ContainerReusableWidget extends StatelessWidget {
  const ContainerReusableWidget({
    Key? key,
    required this.ContainerColor,
    required this.ContainerText

  }) : super(key: key);

 final String ContainerText;
 final Color ContainerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 100,
      decoration: BoxDecoration(
        color: ContainerColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Text("ContainerText",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w400)),
      ),
    );
  }
}
