import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mehdifirstfast/Fashion_UI_practise/Reuseable_FormField.dart';

class LogInPage extends StatefulWidget {


  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {

  bool IsHide = true;
  TextEditingController userName = TextEditingController();
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPassword = TextEditingController();
  final Formkey =GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffff9b9b),
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
      body: Form(
        key:Formkey,
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              child:const Text('Log In',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,),),
              width: double.infinity,
              height: 200,
              //color: Colors.black,
            ),
            const SizedBox(height: 20,),

            FormField1(
              label_name: 'Name',
              hint_text: 'ABC',
              pre_icon: const Icon(Icons.person),
              Password_Hide: false,
              errorMessage: 'Enter Your Name',
              textContoller: userName,

            ),const SizedBox(height: 5,),
            FormField1(
              label_name: 'Email',
              hint_text: 'ABC@gmail.com',
              pre_icon: const Icon(Icons.email),
              Password_Hide: false,
              errorMessage: 'Enter Your Email',
              textContoller: userEmail ,
            ),const SizedBox(height: 5,),

            FormField1(
              label_name: 'Password',
              hint_text: '*****',
              Password_Hide: IsHide==true?true:false,
              pre_icon: const Icon(Icons.password),
              suff_icon: IconButton(onPressed: (){
                setState(() {
                  IsHide = ! IsHide;
                });
              }, icon: IsHide == true? const Icon(Icons.remove_red_eye_rounded):const Icon(Icons.remove_red_eye_outlined),),

              errorMessage: 'Enter Your Password',
              textContoller: userPassword,
            ),

            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              if(Formkey.currentState!.validate()){
                debugPrint(userName.text.toString());
                debugPrint(userEmail.text.toString());
                debugPrint(userPassword.text.toString());
                userName.clear();
                userEmail.clear();
                userPassword.clear();

                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(
                  content: Text('${userName.text.toString()} Logged In'),
                ));
              }
            }, child: const Text('LogIn'))

          ],
        ),
      )
    );
  }
}

