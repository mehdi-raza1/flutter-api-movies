import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {


  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
            SizedBox(
              width: double.infinity,
              height: 200,
              //color: Colors.black,
              child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      width: double.infinity,
                      height: 140,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        image: const DecorationImage( fit: BoxFit.cover,image: AssetImage("images/drwr.jpg")),
                        borderRadius: BorderRadius.circular(14)
                      ),
                    ),
                    const Positioned(
                        top: 80,
                        left: 150,
                        child: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage("images/boy.png"),
                      backgroundColor: Colors.blue,
                    )
                    )
                  ],//STACK CHILDREN
              ),

            ),
          const Text("Mehdi raza"),
          const Text("mraza.valyani@gmail.com")

        ],
      ),
    );
  }
}
