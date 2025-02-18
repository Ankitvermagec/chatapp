import "package:flutter/material.dart";
import 'package:carousel_slider/carousel_slider.dart';
import '../Helper/image.dart';



/*
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  final list = [Page1(), Page2(),Page3()];

  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:list[selectedIndex] ,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
        child: BottomNavigationBar(


          backgroundColor: Colors.blueAccent,
            onTap: (value) {
  setState(() {
    selectedIndex = value;
  });

},


           currentIndex: selectedIndex,
            items:[
              BottomNavigationBarItem(
                // tooltip: "hellow",
                // backgroundColor: Colors.red,
                icon: selectedIndex == 0 ? Icon(Icons.edit,size: 15,):Icon(Icons.edit,color: Colors.red,),
               label: "Edit",
              ),
              BottomNavigationBarItem(icon:selectedIndex == 1 ? Icon(Icons.home,size: 15,):Icon(Icons.home,color: Colors.red,),label: "home"),
              BottomNavigationBarItem(icon: selectedIndex == 2 ? Icon(Icons.car_crash,size: 15,):Icon(Icons.car_crash,color: Colors.red,),label: "car"),

            ] ),
      ),
    );
  }
}

*/

// debugShowCheckedModeBanner: false,

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  var selectedIndex = 0;
  final list = [Page1(), Page2(),Page3()];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // AppBar to show the drawer icon (hamburger menu)
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('Bottom Navigation'),
          leading: Builder(
            builder: (context) {
              return  IconButton(
                icon: Icon(Icons.menu), // This is the drawer icon
                onPressed: () {
                  Scaffold.of(context).openDrawer(); // Opens the drawer when tapped
                },
              );
            },

          ),
        ),

        drawer:  SafeArea(
          child: Drawer(
            backgroundColor: Colors.white,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                // DrawerHeader(
                //   decoration: BoxDecoration(
                //     color: Colors.blueAccent,
                //   ),
                //   child: Text(
                //     'Drawer Header',
                //     style: TextStyle(
                //       color: Colors.white,
                //       fontSize: 24,
                //     ),
                //   ),
                // ),
                
                DrawerHeader(child: Container(
                  child: Column(
                    children: [
                      ClipOval(
                        child: Image.asset(ProjectImages.ring ,height: 50,),
                      ),
                      // Spacer(),
                      SizedBox(height: 3,),
                      Text("Hello ankit")
                    ],
                  ),
                )),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.home),
                    Text("Home")
                  ],
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  onTap: () {
                    // Close the drawer and handle navigation
                    Navigator.pop(context);
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () {
                    // Close the drawer and handle navigation
                    Navigator.pop(context);
                    // You can add additional navigation actions here
                  },
                ),
                // Add more ListTiles as needed
              ],
            ),
          ),
        ),

        body:list[selectedIndex], // Your body content here
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 35), // Adjust padding as needed
          height: MediaQuery.of(context).size.height*0.075, // Fixed height for the bottom navigation
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(25), topLeft: Radius.circular(25)),
            color: Colors.red,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.edit,
                        size: 25,
                        color:selectedIndex == 0 ?Colors.blue : Colors.white,
                      ),
                      Text(
                        "Edit",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        size: 25,
                        color:selectedIndex == 1 ? Colors.blue:Colors.white,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.car_crash,
                        size: 25,
                        color:selectedIndex == 2 ?Colors.blue : Colors.white,
                      ),
                      Text(
                        "Car",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}






class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // drawer: Container(
        //   height: MediaQuery.of(context).size.height,
        //   color: Colors.blueAccent,
        // ),
        body: Container(
          color: Colors.red,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Text("Page1"),
          ),
        ),
      ),
    );
  }
}


class Page2 extends StatelessWidget {
  Page2({super.key});

  List arr_list = ["hello", "world", "hello i am here"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          CarouselSlider(
            items: arr_list.map((e) {
              return Container(
                alignment: Alignment.center,
                child: Text(
                  e.toString(),
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                width: MediaQuery.of(context).size.width * 0.8, // Set a fixed width for each item
                decoration: BoxDecoration(
                  color: Colors.blueAccent, // Add background color for each carousel item
                  borderRadius: BorderRadius.circular(10), // Optional: Rounded corners
                ),
              );
            }).toList(),
          //   options: CarouselOptions(
          //   height: 50,
          //   autoPlay: true,
          //   viewportFraction: 0.8,
          //   enlargeCenterPage: true
          // ),
            options: CarouselOptions(
              height: 200.0, // Set a height for the carousel
              autoPlay: true, // Make the carousel autoplay
              enlargeCenterPage: true, // Enlarge the center page
              viewportFraction: 0.8, // Set the width of the visible item
              autoPlayInterval: Duration(seconds: 3), // Auto play interval
              autoPlayAnimationDuration: Duration(milliseconds: 800), // Animation speed
            ),
          ),

          Container(
            // margin: EdgeInsets.only(bottom: 2),
            // color: Colors.yellow,
            height: MediaQuery.of(context).size.height*0.3,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 5,
              itemBuilder: (context, index) {
              return Container(
                // alignment: Alignment.center,
                color: Colors.yellow,
                margin: EdgeInsets.fromLTRB(0, 7, 0, 7),
                // padding: EdgeInsets.only(top: 5),
                // margin: EdgeInsets.only(bottom: 3),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(ProjectImages.ring,height: 50,),
                    SizedBox(width: 3,),
                    Text("data"),
                  ],
                ),
              );
            },),
          )
        ],
      ),
    );
  }
}


class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Text("Page3"),
      ),
    );
  }
}