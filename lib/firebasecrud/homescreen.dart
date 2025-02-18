// /*
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import 'getcontroller.dart';
//
// class CrudHomeScreen extends StatefulWidget {
//   const CrudHomeScreen({super.key});
//
//   @override
//   State<CrudHomeScreen> createState() => _CrudHomeScreenState();
// }
//
// class _CrudHomeScreenState extends State<CrudHomeScreen> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     GetFireController getController = Get.put(GetFireController());
//
//     print("Notes List length: ${getController.notesList.length}");
//     print("Convert1 length: ${getController.convert1.length}");
//     super.initState();
//   }
//   var sub = 0.obs;
//   var a = 0.obs;
//
//   Widget build(BuildContext context) {
//
//
//
//
//
//
//     return SafeArea(
//       child: Scaffold(
//         resizeToAvoidBottomInset: true, // Adjust this to true to ensure the screen resizes with keyboard
//         body:Obx(() {
//           return Stack(
//             children: [
//               // Main content
//               Container(
//                 child: Column(
//                   children: [
//                     Container(
//                       height: MediaQuery.of(context).size.height * 0.20,
//                       child: ListView.builder(
//                         itemCount: getController.notesList.length,
//                         // itemCount: 5,
//                         itemBuilder: (context, index) {
//                           return Row(
//                             children: [
//                               Text(getController.notesList[index].toString()),
//                             ],
//                           );
//                         },
//                       ),
//                     ),
//
//
//                   ],
//                 ),
//               ),
//
//               // Padding(
//               //   padding: const EdgeInsets.all(8),
//               //   child: Column(
//               //     children:
//               //     getController.notesList.map((element) {
//               //       // Assuming element is an instance of a Note model
//               //       return Padding(
//               //         padding: const EdgeInsets.all(5),
//               //         child:getController.convert.value ?
//               //         ListTile(
//               //           leading: InkWell(
//               //             onTap: () {
//               //               sub = ++a;
//               //               print("${getController.convert}");
//               //               getController.convert.value = !getController.convert.value;
//               //               print("${getController.convert}");
//               //
//               //             },
//               //             child: Icon(
//               //                 Icons.notification_add
//               //             ),
//               //           ),
//               //           tileColor: Colors.deepPurple.shade100,
//               //           title:TextFormField(
//               //             ///cascade notation
//               //             controller: getController.title..text = element["title"].toString(),
//               //             decoration: InputDecoration(
//               //               border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
//               //               fillColor: Colors.grey,
//               //               contentPadding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.020,
//               //               horizontal: MediaQuery.of(context).size.height*0.020,
//               //               )
//               //             ),
//               //           ),
//               //           subtitle:TextFormField(
//               //             ///cascade notation
//               //             controller: getController.discription..text = element["discription"].toString(),
//               //             decoration: InputDecoration(
//               //                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
//               //                 fillColor: Colors.grey,
//               //                 contentPadding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.020,
//               //                   horizontal: MediaQuery.of(context).size.height*0.020,
//               //                 )
//               //             ),
//               //           ), // Optional: Show description if needed
//               //           trailing: InkWell(
//               //               onTap: () {
//               //                 getController.firebaseUpdate(element["id"].toString());
//               //               },
//               //               child: Icon(Icons.edit,color: Colors.red)),
//               //         ) :
//               //         ListTile(
//               //           leading: InkWell(
//               //             onTap: () {
//               //               print("${getController.convert}");
//               //               getController.convert.value = !getController.convert.value;
//               //               print("${getController.convert}");
//               //
//               //             },
//               //             child: Icon(
//               //                 Icons.notification_add
//               //             ),
//               //           ),
//               //           tileColor: Colors.deepPurple.shade100,
//               //           title: Text(element["title"].toString()), // Access title correctly
//               //           subtitle: Text(element["discription"].toString()), // Optional: Show description if needed
//               //           trailing: InkWell(
//               //               onTap: () {
//               //                 getController.firebaseDeleteData(element["id"].toString());
//               //               },
//               //               child: Icon(Icons.delete,color: Colors.red)),
//               //         ),
//               //
//               //       );
//               //     }).toList(), // Convert iterable to a list
//               //
//               //   ),
//               // ),
// */
// /*
//               getController.notesList.isNotEmpty ? getController.convert1.isNotEmpty? Padding(
//                 padding: const EdgeInsets.all(8),
//                 child: Column(
//                   children:
//                   getController.notesList.asMap().entries.map((entry) {
//
//                     int index = entry.key;
//                     var element = entry.value;
//                     // Assuming element is an instance of a Note model
//                     return Padding(
//                       padding: const EdgeInsets.all(5),
//                       child:getController.convert1[index].value?
//                       ListTile(
//                         leading: InkWell(
//                           onTap: () {
//
//                             print("${getController.convert}");
//                             getController.convert1[index].value = !getController.convert1[index].value;
//                             getController.convert.value = !getController.convert.value;
//                             print("${getController.convert}");
//
//                           },
//                           child: Icon(
//                               Icons.notification_add
//                           ),
//                         ),
//                         tileColor: Colors.deepPurple.shade100,
//                         title:TextFormField(
//                           ///cascade notation
//                           controller: getController.title..text = element["title"].toString(),
//                           decoration: InputDecoration(
//                             border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
//                             fillColor: Colors.grey,
//                             contentPadding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.020,
//                             horizontal: MediaQuery.of(context).size.height*0.020,
//                             )
//                           ),
//                         ),
//                         subtitle:TextFormField(
//                           ///cascade notation
//                           controller: getController.discription..text = element["discription"].toString(),
//                           decoration: InputDecoration(
//                               border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
//                               fillColor: Colors.grey,
//                               contentPadding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.020,
//                                 horizontal: MediaQuery.of(context).size.height*0.020,
//                               )
//                           ),
//                         ), // Optional: Show description if needed
//                         trailing: InkWell(
//                             onTap: () {
//                               getController.firebaseUpdate(element["id"].toString());
//                             },
//                             child: Icon(Icons.edit,color: Colors.red)),
//                       ) :
//                       ListTile(
//                         leading: InkWell(
//                           onTap: () {
//                             print("${getController.convert}");
//                             getController.convert1[index].value = !getController.convert1[index].value;
//                             print("array 222 ------ >>>>>${getController.convert1[index].value}");
//                           },
//                           child: Icon(
//                               Icons.notification_add
//                           ),
//                         ),
//                         tileColor: Colors.deepPurple.shade100,
//                         title: Text(element["title"].toString()), // Access title correctly
//                         subtitle: Text(element["discription"].toString()), // Optional: Show description if needed
//                         trailing: InkWell(
//                             onTap: () {
//                               getController.firebaseDeleteData(element["id"].toString());
//                             },
//                             child: Icon(Icons.delete,color: Colors.red)),
//                       ),
//
//                     );
//                   }).toList(), // Convert iterable to a list
//
//                 ),
//               ) :
//           Container(
//           height: MediaQuery.of(context).size.height,
//           child: Text("no data found"),
//           )
//               :Container(
//                 height: MediaQuery.of(context).size.height,
//                 child: Text("no data found"),
//               ),
// *//*
//
//
//
//
//               getController.notesList.isNotEmpty ? getController.convert1.length == getController.notesList.length ?
//               Padding(
//                 padding: const EdgeInsets.all(8),
//                 child: Column(
//                   children:
//                   getController.notesList.asMap().entries.map((entry) {
//
//                     int index = entry.key;
//                     var element = entry.value;
//
//                     // Ensure convert1[index] exists before accessing
//                     if (getController.convert1.length > index) {
//                       return Padding(
//                         padding: const EdgeInsets.all(5),
//                         child: getController.convert1[index].value
//                             ? ListTile(
//                           leading: InkWell(
//                             onTap: () {
//                               print("${getController.convert}");
//                               getController.convert1[index].value = !getController.convert1[index].value;
//                               getController.convert.value = !getController.convert.value;
//                               print("${getController.convert}");
//                             },
//                             child: Icon(Icons.notification_add),
//                           ),
//                           tileColor: Colors.deepPurple.shade100,
//                           title: TextFormField(
//                             controller: getController.title..text = element["title"].toString(),
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
//                               fillColor: Colors.grey,
//                               contentPadding: EdgeInsets.symmetric(
//                                 vertical: MediaQuery.of(context).size.height * 0.020,
//                                 horizontal: MediaQuery.of(context).size.height * 0.020,
//                               ),
//                             ),
//                           ),
//                           subtitle: TextFormField(
//                             controller: getController.discription..text = element["discription"].toString(),
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
//                               fillColor: Colors.grey,
//                               contentPadding: EdgeInsets.symmetric(
//                                 vertical: MediaQuery.of(context).size.height * 0.020,
//                                 horizontal: MediaQuery.of(context).size.height * 0.020,
//                               ),
//                             ),
//                           ),
//                           trailing: InkWell(
//                               onTap: () {
//                                 getController.firebaseUpdate(element["id"].toString());
//                               },
//                               child: Icon(Icons.edit, color: Colors.red)),
//                         )
//                             : ListTile(
//                           leading: InkWell(
//                             onTap: () {
//                               print("${getController.convert}");
//                               getController.convert1[index].value = !getController.convert1[index].value;
//                               print("array 222 ------ >>>>>${getController.convert1[index].value}");
//                             },
//                             child: Icon(Icons.notification_add),
//                           ),
//                           tileColor: Colors.deepPurple.shade100,
//                           title: Text(element["title"].toString()), // Access title correctly
//                           subtitle: Text(element["discription"].toString()), // Optional: Show description if needed
//                           trailing: InkWell(
//                               onTap: () {
//                                 getController.firebaseDeleteData(element["id"].toString());
//                               },
//                               child: Icon(Icons.delete, color: Colors.red)),
//                         ),
//                       );
//                     } else {
//                       return SizedBox.shrink(); // Return empty widget if convert1[index] doesn't exist
//                     }
//                   }).toList(), // Convert iterable to a list
//                 ),
//               ) : Center(child: Text("Loading..."),)
//                   : Container(
//                 height: MediaQuery.of(context).size.height,
//                 child: Text("no data found"),
//               ),
//
//
//
//
//
//               // Floating Action Button
//               Positioned(
//                 bottom: 5,
//                 right: 2,
//                 child: FloatingActionButton(
//                   onPressed: () {
//                     bottomDialoguBox(context, getController);
//                   },
//                   child: Icon(Icons.add),
//                 ),
//               ),
//             ],
//           );
//         }),
//
//       ),
//     );
//   }
//
//   Future bottomDialoguBox(context, GetFireController getController) {
//     return showModalBottomSheet(
//       context: context,
//       isScrollControlled: true, // Allows content to scroll if too tall
//       // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag, // Dismiss keyboard when dragging
//       builder: (BuildContext context) {
//         return SingleChildScrollView( // Wrap the content with SingleChildScrollView to make it scrollable
//           child: Container(
//             width: MediaQuery.of(context).size.width, // Full width
//             padding: EdgeInsets.symmetric(
//                 horizontal: MediaQuery.of(context).size.width * 0.05,
//                 vertical: MediaQuery.of(context).size.height * 0.02),
//             decoration: BoxDecoration(
//               color: Colors.white, // Background color
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(20),
//                 topRight: Radius.circular(20),
//               ),
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min, // Prevents the column from expanding too much
//               children: [
//                 TextFormField(
//                   controller: getController.title,
//                   decoration: InputDecoration(
//                     contentPadding: EdgeInsets.symmetric(
//                         vertical: MediaQuery.of(context).size.height * 0.020,
//                         horizontal: MediaQuery.of(context).size.width * 0.020),
//                     hintText: "Enter title",
//                     fillColor: Colors.grey[300],
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 TextFormField(
//                   controller: getController.discription,
//                   decoration: InputDecoration(
//                     contentPadding: EdgeInsets.symmetric(
//                         vertical: MediaQuery.of(context).size.height * 0.020,
//                         horizontal: MediaQuery.of(context).size.width * 0.020),
//                     hintText: "Enter description",
//                     fillColor: Colors.grey[300],
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Container(
//                   width: double.infinity, // Full width button
//                   child: MaterialButton(
//                     onPressed: () {
//                       getController.firebaseAddData();
//                       Get.back();
//                     },
//                     color: Colors.blue, // Button color
//                     textColor: Colors.white, // Button text color
//                     padding: EdgeInsets.symmetric(vertical: 15),
//                     child: Text("SAVE"),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
// */
//
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'getcontroller.dart';
//
// class CrudHomeScreen extends StatefulWidget {
//   const CrudHomeScreen({super.key});
//
//   @override
//   State<CrudHomeScreen> createState() => _CrudHomeScreenState();
// }
//
// class _CrudHomeScreenState extends State<CrudHomeScreen> {
//   // Initialize the controller globally (only once for the lifetime of the widget)
//   final GetFireController getController = Get.put(GetFireController());
//
//   @override
//   void initState() {
//     super.initState();
//     // Optionally print the lengths once when the screen is initialized
//     print("Notes List length: ${getController.notesList.length}");
//     print("Convert1 length: ${getController.convert1.length}");
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         resizeToAvoidBottomInset: true,
//         body: Obx(() {
//           // If the lists are empty, show a message
//           if (getController.notesList.isEmpty) {
//             return Center(child: Text("No data found"));
//           }
//
//           // Ensure both lists are of equal length before proceeding
//           if (getController.notesList.length != getController.convert1.length) {
//             return Center(child: Text("Data is mismatched"));
//           }
//
//           return Padding(
//             padding: const EdgeInsets.all(8),
//             child: ListView.builder(
//               itemCount: getController.notesList.length,
//               itemBuilder: (context, index) {
//                 var element = getController.notesList[index];
//                 bool isEditing = getController.convert1[index].value;
//
//                 return Padding(
//                   padding: const EdgeInsets.all(5),
//                   child: ListTile(
//                     leading: InkWell(
//                       onTap: () {
//                         // Toggle the conversion state for this element
//                         getController.convert1[index].value = !isEditing;
//                       },
//                       child: Icon(Icons.notification_add),
//                     ),
//                     tileColor: Colors.deepPurple.shade100,
//                     title: isEditing
//                         ? TextFormField(
//                       controller: getController.title..text = element["title"].toString(),
//                       decoration: InputDecoration(
//                         border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
//                         fillColor: Colors.grey,
//                         contentPadding: EdgeInsets.symmetric(
//                           vertical: MediaQuery.of(context).size.height * 0.020,
//                           horizontal: MediaQuery.of(context).size.width * 0.020,
//                         ),
//                       ),
//                     )
//                         : Text(element["title"].toString()),
//                     subtitle: isEditing
//                         ? TextFormField(
//                       controller: getController.discription..text = element["discription"].toString(),
//                       decoration: InputDecoration(
//                         border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
//                         fillColor: Colors.grey,
//                         contentPadding: EdgeInsets.symmetric(
//                           vertical: MediaQuery.of(context).size.height * 0.020,
//                           horizontal: MediaQuery.of(context).size.width * 0.020,
//                         ),
//                       ),
//                     )
//                         : Text(element["discription"].toString()),
//                     trailing: InkWell(
//                       onTap: () {
//                         if (isEditing) {
//                           getController.firebaseUpdate(element["id"].toString());
//                         } else {
//                           getController.firebaseDeleteData(element["id"].toString());
//                         }
//                       },
//                       child: Icon(isEditing ? Icons.edit : Icons.delete, color: Colors.red),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           );
//         }),
//         floatingActionButton: Positioned(
//           bottom: 5,
//           right: 2,
//           child: FloatingActionButton(
//             onPressed: () {
//               bottomDialoguBox(context, getController);
//             },
//             child: Icon(Icons.add),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Future bottomDialoguBox(context, GetFireController getController) {
//     return showModalBottomSheet(
//       context: context,
//       isScrollControlled: true,
//       builder: (BuildContext context) {
//         return SingleChildScrollView(
//           child: Container(
//             padding: EdgeInsets.symmetric(
//                 horizontal: MediaQuery.of(context).size.width * 0.05,
//                 vertical: MediaQuery.of(context).size.height * 0.02),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(20),
//                 topRight: Radius.circular(20),
//               ),
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 TextFormField(
//                   controller: getController.title,
//                   decoration: InputDecoration(
//                     hintText: "Enter title",
//                     fillColor: Colors.grey[300],
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 TextFormField(
//                   controller: getController.discription,
//                   decoration: InputDecoration(
//                     hintText: "Enter description",
//                     fillColor: Colors.grey[300],
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Container(
//                   width: double.infinity,
//                   child: MaterialButton(
//                     onPressed: () {
//                       getController.firebaseAddData();
//                       Get.back();
//                     },
//                     color: Colors.blue,
//                     textColor: Colors.white,
//                     padding: EdgeInsets.symmetric(vertical: 15),
//                     child: Text("SAVE"),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
//
// }
//
//
