import 'package:chat_app/Helper/image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Vegetable_Design extends StatefulWidget {
  const Vegetable_Design({super.key});

  @override
  State<Vegetable_Design> createState() => _Vegetable_DesignState();
}

class _Vegetable_DesignState extends State<Vegetable_Design> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leadingWidth: 0,
        backgroundColor: Colors.white,
        leading: Icon(
            Icons.keyboard_arrow_left,color: Colors.black,
        ),
        title:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

          Text("Fresh Vegetables",style: TextStyle(fontSize: 17,color: Colors.black),),
          Row(children: [
            Icon(Icons.star,size: 14,color: Colors.green,),
            SizedBox(width: MediaQuery.of(context).size.width*0.002,),
            Text("14 ",style: TextStyle(fontSize: 13,color: Colors.green),),
          ],)

        ]) ,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 14),
        child: Row(
          children: [
            // First container (red side bar)
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.18, // 20% width of screen
                  child: Column(
                    children: [
                      Image.asset(ProjectImages.vegetable_img,height: 60,width: 60),
                      Container(
                        // color: Colors.blue,
                        alignment: Alignment.center,
                        child: Center(
                          child: Text("Potato, Onion & TOomato",style: TextStyle(fontSize: 10,color: Colors.grey),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(height: MediaQuery.of(context).size.height*0.03,),

                SingleChildScrollView(
                  child: Container(
                    // margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.002),
                    height: MediaQuery.of(context).size.height*0.74,
                    width: MediaQuery.of(context).size.width * 0.18, // 20% width of screen
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color:  Colors.blue.shade100,
                        // color: Colors.grey.shade400,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10))
                    ),

                    child: ListView.builder(
                      itemCount: 39,
                      itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(ProjectImages.vegetable_img,height: 60,width: 60),
                          Container(
                            // color: Colors.blue,
                            alignment: Alignment.center,
                            child: Center(
                              child: Text("Potato, Onion & TOomato",style: TextStyle(fontSize: 10,color: Colors.grey),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              ),
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height * 0.008), //
                        ],
                      );
                    },),
                  ),
                ),
              ],
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.008), // Small space between content

            // Second container (with GridView.builder)
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20))
                ),
                padding: EdgeInsets.all(10), // Padding for inner content
                child: GridView.builder(
                  itemCount: 2,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // One item per row
                    mainAxisSpacing: 10, // Space between items vertically
                    crossAxisSpacing: 10, // Space between items horizontally
                    childAspectRatio: 2 / 3, // Aspect ratio for the item
                  ),
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Image with a stack and additional features
                            Stack(
                              children: [
                                Image.asset(
                                  ProjectImages.vegetable_img,
                                  width: MediaQuery.of(context).size.width * 0.34,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            // Price row with strike-through
                            Row(
                              children: [
                                Text(
                                  "#23.02",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "#28.77",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough, // Strike-through for old price
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            // Product description text
                            Text(
                              "fresho!",
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey),
                            ),
                            Text(
                              "Carrot-Red",
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey),
                            ),
                            SizedBox(height: 5),
                            // Weight and arrow down icon
                            Row(
                              children: [
                                Text(
                                  "500g",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: CupertinoColors.activeGreen,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Icon(CupertinoIcons.arrow_down, color: CupertinoColors.activeGreen, size: 13),
                              ],
                            ),
                            SizedBox(height: 10),
                            // Time container with star icon
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                children: [
                                  Icon(CupertinoIcons.star, size: 10),
                                  SizedBox(width: 5),
                                  Text(
                                    "14 mins",
                                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        Positioned(
                          right: 8,
                            bottom: 100,
                            child: Container(
                          height: MediaQuery.of(context).size.height*0.06,
                          width: MediaQuery.of(context).size.width*0.12,
                          decoration: BoxDecoration(color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(width: 1)
                          ),
                              child: Center(
                                child: Icon(Icons.add,color: Colors.green),
                              ),
                        ))
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
