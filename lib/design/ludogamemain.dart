import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LudoGameMainScreen extends StatefulWidget {
  const LudoGameMainScreen({super.key});

  @override
  State<LudoGameMainScreen> createState() => _LudoGameMainScreenState();
}

class _LudoGameMainScreenState extends State<LudoGameMainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.width * 0.33,
                  color: Colors.yellow,
                ),

                // Expanded widget makes sure GridView takes available space
                Container(
                  color: Colors.blue,
                  height: MediaQuery.of(context).size.height*0.20,
                  width:  MediaQuery.of(context).size.width*0.30,
                  child: GridView.builder(
                    itemCount: 12, // Number of grid items
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,  // Number of items per row
                      crossAxisSpacing: 4,  // Space between columns
                      mainAxisSpacing: 2,  // Space between rows
                      childAspectRatio: 1,  // Square grid items
                    ),
                    itemBuilder: (context, index) {
                      return Container(

                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                      );
                    },
                  ),
                ),

                Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.width * 0.33,
                  color: Colors.red,
                ),
              ],
            ),


            Row(
              children: [
                Container(
                  color: Colors.blue,
                  height: MediaQuery.of(context).size.height*0.10,
                  width:  MediaQuery.of(context).size.width*0.34,
                  child: GridView.builder(
                    itemCount: 6, // Number of grid items
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,  // Number of items per row
                      crossAxisSpacing: 4,  // Space between columns
                      mainAxisSpacing: 2,  // Space between rows
                      childAspectRatio: 1,  // Square grid items
                    ),
                    itemBuilder: (context, index) {
                      return Container(

                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  color: Colors.greenAccent,
                  height: MediaQuery.of(context).size.height*0.10,
                  width: MediaQuery.of(context).size.width*0.30,
                ),
                // Container(
                //   height: MediaQuery.of(context).size.height*0.025,
                //   width: MediaQuery.of(context).size.width * 0.33,
                //
                //   child: GridView.builder(
                //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 3,  // Number of items per row
                //       crossAxisSpacing: 4,  // Space between columns
                //       mainAxisSpacing: 2,  // Space between rows
                //       childAspectRatio: 1,  // Square grid items
                //     ),
                //     itemBuilder: (context, index) {
                //       return  Container(
                //         color: Colors.blue,
                //         height: MediaQuery.of(context).size.height*0.20,
                //         width:  MediaQuery.of(context).size.width*0.30,
                //         child: GridView.builder(
                //           itemCount: 12, // Number of grid items
                //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //             crossAxisCount: 3,  // Number of items per row
                //             crossAxisSpacing: 4,  // Space between columns
                //             mainAxisSpacing: 2,  // Space between rows
                //             childAspectRatio: 1,  // Square grid items
                //           ),
                //           itemBuilder: (context, index) {
                //             return Container(
                //
                //               decoration: BoxDecoration(
                //                 color: Colors.blue,
                //                 borderRadius: BorderRadius.circular(7),
                //                 border: Border.all(color: Colors.black, width: 1),
                //               ),
                //             );
                //           },
                //         ),
                //       );              },),
                // ),


                Container(
                  color: Colors.blue,
                  height: MediaQuery.of(context).size.height*0.10,
                  width:  MediaQuery.of(context).size.width*0.34,
                  child: GridView.builder(
                    itemCount: 12, // Number of grid items
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,  // Number of items per row
                      crossAxisSpacing: 4,  // Space between columns
                      mainAxisSpacing: 2,  // Space between rows
                      childAspectRatio: 1,  // Square grid items
                    ),
                    itemBuilder: (context, index) {
                      return Container(

                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                      );
                    },
                  ),
                ),

              ],
            ),

            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.width * 0.33,
                  color: Colors.yellow,
                ),

                // Expanded widget makes sure GridView takes available space
                Container(
                  color: Colors.blue,
                  height: MediaQuery.of(context).size.height*0.20,
                  width:  MediaQuery.of(context).size.width*0.30,
                  child: GridView.builder(
                    itemCount: 12, // Number of grid items
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,  // Number of items per row
                      crossAxisSpacing: 4,  // Space between columns
                      mainAxisSpacing: 2,  // Space between rows
                      childAspectRatio: 1,  // Square grid items
                    ),
                    itemBuilder: (context, index) {
                      return Container(

                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                      );
                    },
                  ),
                ),

                Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.width * 0.33,
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
