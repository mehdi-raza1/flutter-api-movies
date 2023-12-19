import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mehdifirstfast/Fashion_UI_practise/Reuseable_FormField.dart';

class LogInPage extends StatefulWidget {


  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffff9b9b),
        elevation: 0,
        title: const Text('Fashion'),
        // actions:  [
        //   IconButton(onPressed: (){
        //     Navigator.push(context, MaterialPageRoute(builder: (context) => LogInPage(),));
        //   }, icon: Icon(Icons.bungalow_outlined,size: 35,),)
        //
        //   // CircleAvatar(
        //   //   radius: 20,
        //   //
        //   //   backgroundImage: AssetImage('images/fashion.png'),
        //   // )
        // ],
        automaticallyImplyLeading: true,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            child:const Text('Log In',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,),),
            width: double.infinity,
            height: 200,
            //color: Colors.black,
          ),
          const SizedBox(height: 20,),

          const FormField1(
            label_name: 'Name',
            hint_text: 'ABC',
            pre_icon: Icon(Icons.person),
          ),const SizedBox(height: 5,),
          const FormField1(
            label_name: 'Email',
            hint_text: 'ABC@gmail.com',
            pre_icon: Icon(Icons.email),
          ),const SizedBox(height: 5,),
          const FormField1(
            label_name: 'Password',
            hint_text: '*****',
            pre_icon: Icon(Icons.password),
          ),


        ],
      ),
    );
  }
}

