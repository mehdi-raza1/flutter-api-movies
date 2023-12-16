import 'package:flutter/material.dart';

import 'Input_Reusable_widget.dart';

class LoginScreen extends StatefulWidget {


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool isHide = true;

  TextEditingController userEmail = TextEditingController();
  TextEditingController userPassword = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children:  [

            TextWidget_Reusable(
              textController: userEmail,
              name: "Enter Email",
              hint: 'Papa_Jones@gmail.com',
              icon: Icon(Icons.email),
              passHide: false,
              errormsg: "Enter Your Email",
              length: false,
            ),
            TextWidget_Reusable(
              textController: userPassword,
              name: "Password",
              hint: '*******',
              length: true,
              icon: const Icon(Icons.password),
              passHide: isHide==true?true:false,
              passIcon: IconButton(onPressed: (){
                setState((){
                  isHide = ! isHide;
                });
              }, icon: isHide==true? Icon(Icons.remove_red_eye_rounded):Icon(Icons.panorama_fish_eye)),
              errormsg: "Enter Your Password",

            ),

            ElevatedButton(onPressed: (){
              if(formkey.currentState!.validate()){


                debugPrint(userEmail.text);
                debugPrint(userPassword.text);

                userEmail.clear();
                userPassword.clear();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content:Text('user resss')
                ));
              }

            }, child: Text("Log In"))

          ],
        ),
      ),
    );
  }
}
