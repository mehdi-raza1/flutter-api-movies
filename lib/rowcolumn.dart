import 'package:flutter/material.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);



  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("E-Commerce") ,

        leading: Builder(builder: (context)=>IconButton(onPressed: (){
          Scaffold.of(context).openDrawer();
        }, icon: const Icon(Icons.category)),),


        actions: const [
          CircleAvatar(
            radius: 20,
            backgroundColor:Colors.black ,
          ),
          SizedBox(width: 6,)
        ],

      ),



      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            Container(
             // color: Colors.blue,
              height: 220,
              child: Column(
                children: [
                  Container(
                    height: 110,
                    //color: Colors.yellow,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4),BlendMode.darken),
                        fit: BoxFit.cover,
                        image: const AssetImage("images/drwr.jpg")
                      )
                    ),
                  ),

                  Container(
                      padding: const EdgeInsets.only(left: 10,top: 10),
                      child: Row(
                        children: [
                          const CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage("images/boy.png"),
                          ),
                        const SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Mehdi Raza",style: TextStyle(color: Colors.white),),
                              Text("mraza.valyani@gmail.com",style: TextStyle(color: Colors.white),)
                            ],
                          )

                        ],
                      )
                  )

                ],
              ),

            ),
            // LIST VIEW
          ListTile(
              leading: const Icon(Icons.notification_add_rounded,color: Colors.white,),
            title: const Text("Notification",style: TextStyle(color: Colors.white),),
            subtitle: Text("Manage Your Notification",style: TextStyle(color: Colors.grey.shade300,fontSize: 12),),
          ),
            ListTile(
              leading: const Icon(Icons.person,color: Colors.white,),
              title: const Text("Profile",style: TextStyle(color: Colors.white),),
              subtitle: Text("Manage Your Notification",style: TextStyle(color: Colors.grey.shade300,fontSize: 12),),
            ),
            ListTile(
              leading: const Icon(Icons.settings,color: Colors.white,),
              title: const Text("Setting",style: TextStyle(color: Colors.white),),
              subtitle: Text("Manage Your Notification",style: TextStyle(color: Colors.grey.shade300,fontSize: 12),),
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip,color: Colors.white,),
              title: const Text("Privacy",style: TextStyle(color: Colors.white),),
              subtitle: Text("Manage Your Notification",style: TextStyle(color: Colors.grey.shade300,fontSize: 12),),
            )
          ],
        ),
      ),



      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Center(
            child: CircleAvatar(
              radius: 80,
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage('images/akd.jpg'),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text("Mehdi Raza",style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 22
          ),),
          const Text("Junior Mobile Application Developer",style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18
          ),),

          const SizedBox(
            width: 60,
            child: Divider(color: Colors.black,thickness: 1,),
          ),

          const SizedBox(
            height: 40,
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10) ,
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.black,
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                   Icon(Icons.email,color: Colors.white,),
                  SizedBox(width: 8),
                  Text("mraza.valyani@gmail.com",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)
                ],
              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20) ,
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.black,
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.phone,color: Colors.white,),
                  SizedBox(width: 8),
                  Text("+92 320-3979959",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
