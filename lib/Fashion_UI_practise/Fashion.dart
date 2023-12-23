
import 'package:flutter/material.dart';
import 'package:mehdifirstfast/Fashion_UI_practise/Reusable_container_card.dart';

import 'login_page.dart';

class FashionDesign extends StatefulWidget {
  const FashionDesign({Key? key}) : super(key: key);

  @override
  State<FashionDesign> createState() => _FashionDesignState();
}

class _FashionDesignState extends State<FashionDesign> {
  bool isCircle = false;

  // _addOverlay(OverlayEntry entry) async {
  //   Overlay.of(context)!.insert(entry);
  // }
  // void show(BuildContext context) {
  //   final entry = OverlayEntry(builder: (BuildContext overlayContext) {
  //     return Container(
  //       height: 50.0,
  //       width: 50.0,
  //       color: Colors.blue,
  //     );
  //   });
  //   AchievementView(
  //     overlay:_addOverlay(entry),
  //     title: "Yeaaah!",
  //   ).show(context);
  //}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffff9b9b),
        elevation: 0,
        title: const Text('Fashion'),
        leading: Builder(
            builder: (context) =>
                IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.accessibility_new_sharp),
                )),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LogInPage(),));
          }, icon: const Icon(Icons.bungalow_outlined, size: 35,),)

          // CircleAvatar(
          //   radius: 20,
          //
          //   backgroundImage: AssetImage('images/fashion.png'),
          // )
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('images/fashion1.jpg')),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('images/boy.png'),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Mehdi Raza',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Text(
                      "mraza.valyani@gmail.com",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: const Icon(
                Icons.notification_add_rounded,
                color: Colors.white,
              ),
              title: const Text(
                "Notification",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "Manage Your Notification",
                style: TextStyle(color: Colors.grey.shade300, fontSize: 12),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: const Text(
                "Profile",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "Manage Your Profile",
                style: TextStyle(color: Colors.grey.shade300, fontSize: 12),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.production_quantity_limits,
                color: Colors.white,
              ),
              title: const Text(
                "Products",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "Manage Your Products",
                style: TextStyle(color: Colors.grey.shade300, fontSize: 12),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: Text(
                "Settings",
                style: TextStyle(color: Colors.white),
              ),
              //subtitle: Text("Manage Your Notification",style: TextStyle(color: Colors.grey.shade300,fontSize: 12),),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
          child : Column(

            children: [
              //SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 170,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://i.pngimg.me/thumb/f/720/f60f9d2b75b24e3eb247.jpg'))),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Top Collection',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CardContainer(
                    urlimage:
                    'https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFzaGlvbnxlbnwwfHwwfHx8MA%3D%3D',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CardContainer(
                    urlimage:
                    'https://images.unsplash.com/photo-1617922001439-4a2e6562f328?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8d29tZW4lMjBmYXNoaW9ufGVufDB8fDB8fHww',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CardContainer(
                    urlimage:
                    'https://i.pinimg.com/originals/cd/eb/bd/cdebbd229398e13259d8ca93d27bd2ac.jpg',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CardContainer(
                    urlimage:
                    'https://thumbs.dreamstime.com/b/portrait-two-sexy-pretty-beautiful-women-fashion-style-clothes-sisters-long-curly-hair-perfect-make-up-people-lifestyle-113021487.jpg',
                  ),
                ],
              ),
              const SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Top Features',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20,),
              Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 200,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.8),
                                blurRadius: 10,
                                spreadRadius: 1,
                                offset: const Offset(10, 10)
                            )
                          ],
                          // color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/fea1.jpg'),
                          )
                      ),
                    ),

                    const SizedBox(width: 30,),
                    Container(
                      width: 150,
                      height: 200,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.8),
                                blurRadius: 10,
                                spreadRadius: 1,
                                offset: const Offset(10, 10)
                            )
                          ],
                          // color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/fea1.jpg'),
                          )
                      ),
                    ),

                  ]

              )
            ],
          )
      ),
    );
  }
}
