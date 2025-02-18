import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


/*class GetFireController  extends GetxController  {

  final FirebaseAuth _firebase = FirebaseAuth.instance;

  final db = FirebaseFirestore.instance;

  TextEditingController title =TextEditingController();
  TextEditingController discription =TextEditingController();

  RxBool convert = false.obs;

  RxList notesList = RxList();

  var convert1 = <RxBool>[];

  @override
  void onInit(){
    firebaseGetData();

    super.onInit();
  }


  firebaseAddData() async {
    var note = {
      "id":db.collection("Notes").doc().id,
      "title" : title.text,
      "discription" : discription.text
    };


  await  db.collection("Notes").add(note);

    firebaseGetData();

    title.clear();
    discription.clear();
    Get.back();
    // title.text ="";
    // discription.text ="";
  }


  firebaseGetData(){
   db.collection("Notes").get().then((value) {
     notesList.value = value.docs.map((e) => e.data()).toList();
   });

   convert1 = List.generate(notesList.length, (index) => false.obs);
   // Print the first item to check the value (for debugging)
   print("conversion --- --- >>>> ${convert1.isNotEmpty ? convert1[0].value : 'No data'}");

   print("Complete note data");
  }

  // Fetch data from Firestore
  // firebaseGetData() async {
  //   try {
  //     // Get the data from Firestore
  //     var snapshot = await db.collection("Notes").get();
  //     notesList.value = snapshot.docs.map((doc) => doc.data()).toList();
  //
  //     // Initialize RxBool for each note based on the fetched data
  //     convert1 = List.generate(notesList.length, (index) => false.obs);
  //
  //     // Print the first item to check the value (for debugging)
  //     print("conversion --- --- >>>> ${convert1.isNotEmpty ? convert1[0].value : 'No data'}");
  //   } catch (e) {
  //     print("Error fetching notes: $e");
  //   }
  // }

// Future<void> firebasedelete() async {
//
//    try{
//
//      QuerySnapshot querySnapshot =  await db.collection("Notes").get();
//      for(var documentSnapshot in querySnapshot.docs)
//      {
//        await documentSnapshot.reference.delete();
//      }
//
//      notesList.removeWhere((element) => element.id == id);
//
//      for(var note in notesList){
//        await db.collection("Notes").add(note);
//      }
//
//    }catch(e){
//      print("Error deleting note : $e");
//    }
//
// }

  // Delete a specific note by its id
  firebaseDeleteData(String noteId) async {
    try {
      // Get the document reference based on the note's id
      DocumentReference noteDoc = db.collection("Notes").doc(noteId);

      // Delete the document
      await noteDoc.delete();

      // Remove the note from the local list as well
      notesList.removeWhere((note) => note['id'] == noteId);
      print("Note deleted successfully");

    } catch (e) {
      print("Error deleting note: $e");
    }
  }



firebaseUpdate(String Id) async {
print("note updated successfully1");

  var note = {
    // "id":db.collection("Notes").doc().id,
    "title" : title.text,
    "discription" : discription.text
  };

    // db.collection("Notes").doc(Id).set(note);
  await  db.collection("Notes").doc(Id).update(note);

firebaseGetData();


print("note updated successfully2");


}



}*/

class Controller extends GetxController {

  final db = FirebaseFirestore.instance;

  RxList BusinessList = RxList();
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();

  @override
  void onInit() {
    // TODO: implement onInit
    GetData();
    super.onInit();
  }


AddData() async {
print("data get added 1");
   var notes ={
      "id": db.collection("Business").doc().id,
     "name":nameController.text.toString(),
     "mobile":mobileController.text.toString()
    };

   await db.collection("Business").add(notes);

print("data get added 2");
  }


GetData() async {
  print("data Fetched 1");

 var Alldata = await db.collection("Business").get();

  BusinessList.value =  Alldata.docs.map((e) => e.data()).toList() ;
  print("data Fetched 2");

}

}
