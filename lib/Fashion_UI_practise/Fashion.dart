import 'package:flutter/material.dart';
import 'package:mehdifirstfast/Fashion_UI_practise/Reusable_container_card.dart';

class FashionDesign extends StatefulWidget {
  const FashionDesign({Key? key}) : super(key: key);

  @override
  State<FashionDesign> createState() => _FashionDesignState();
}

class _FashionDesignState extends State<FashionDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Fashion'),
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.accessibility_new_sharp),
                )),
        actions: const [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('images/fashion.png'),
          )
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
      body: Column(
        children: [
          //SizedBox(height: 10,),
          Container(
            width: double.infinity,
            height: 170,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://www.orchardtaunton.co.uk/app/uploads/2020/03/OSC-Spring-Generic-2020-Website-Fashion-Banner-01.jpg'))),
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
          SizedBox(
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
          )
        ],
      ),
    );
  }
}
