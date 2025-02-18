import "package:flutter/material.dart";
import 'package:carousel_slider/carousel_slider.dart';

import '../Helper/image.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var selectedIndex = 0;

  List pagination = [ Page1(),Page2(),Page3(), ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Row(children: [
         InkWell(
           onTap: () {
             Scaffold.of(context).openDrawer();
           },
           child: Icon(Icons.maps_home_work,
             color:Colors.white ,
           ),
         ),
         Text("home",style: TextStyle(color: Colors.white), ),
         Icon(Icons.maps_home_work,
           color:Colors.transparent ,
         ),
       ]),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                child: Column(
                  children: [
                    ClipOval(
                      child: Image.asset(ProjectImages.ring1 ,height: MediaQuery.of(context).size.height*0.020,width: MediaQuery.of(context).size.width*0.020,),
                    ),
                    Text("Name Ring")
                  ],
                )),

            Column(
              children: [
                Row(children: [
                  Icon(Icons.settings,
                    color:Colors.white ,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.001,),
                  Text("settings" )
                ],),
                SizedBox(height: MediaQuery.of(context).size.height*0.010,),
                Row(children: [
                  Icon(Icons.settings,
                    color:Colors.white ,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.001,),
                  Text("settings" )
                ],),
                SizedBox(height: MediaQuery.of(context).size.height*0.010,),
                Row(children: [
                  Icon(Icons.settings,
                    color:Colors.white ,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.001,),
                  Text("settings" )
                ],),

              ],
            )
          ],
        ),
      ),
     body:pagination[selectedIndex] ,
     bottomNavigationBar: Container(
       height: MediaQuery.of(context).size.height*0.040,
       child: Row(
         children: [
           InkWell(
             onTap: () {
               setState(() {
                 selectedIndex = 0;
               });
             },
             child: Column(
               children: [
                 Icon(Icons.edit,
                   color:selectedIndex == 0?Colors.blue:Colors.white ,
                 ),
                 Text("edit" )
               ],
             ),
           ),

           InkWell(
             onTap: () {
               setState(() {
                 selectedIndex = 1;
               });
             },
             child: Column(
               children: [
                 Icon(Icons.home,
                   color:selectedIndex == 1?Colors.blue:Colors.white ,
                 ),
                 Text("home" )
               ],
             ),
           ),

           InkWell(
             onTap: () {
               setState(() {
                 selectedIndex = 2;
               });
             },
             child: Column(
               children: [
                 Icon(Icons.car_crash,
                   color:selectedIndex == 2?Colors.blue:Colors.white ,
                 ),
                 Text("car_crash" )
               ],
             ),
           )
         ],
       ),
     ),

    );
  }
}




class Page1 extends StatelessWidget {
   Page1({super.key});

  List arr_list =[ProjectImages.ring1,ProjectImages.ring1,ProjectImages.ring1];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         CarouselSlider(
             items: arr_list.map((e) {
               return Container(
                 height: MediaQuery.of(context).size.height*0.20,
                 width: MediaQuery.of(context).size.width*0.30,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20)
                 ),
                 child: Image.asset(e),
               );
             }).toList(),
             options: CarouselOptions(
               autoPlay: true
             )
         ),

          Container(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
              return Container(
                height: MediaQuery.of(context).size.height*0.020,
                width: MediaQuery.of(context).size.width*0.30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.deepPurpleAccent
                ),
                child: Text("Hello World" ,style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
                )),
              );
            },),
          )
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
   Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("page2")

        ],
      ),
    );
  }
}

class Page3 extends StatelessWidget {
   Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        Text("page3")
        ],
      ),
    );
  }
}

