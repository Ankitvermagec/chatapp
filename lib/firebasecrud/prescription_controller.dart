

import 'dart:io';

import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PrescriptionController  extends GetxController {

 final db =  FirebaseFirestore.instance;
 final storage = FirebaseStorage.instance;


 TextEditingController nameController = TextEditingController();
 TextEditingController mobileController = TextEditingController();

   RxList prescriptionList = RxList();


 @override
 void onInit() {
   // TODO: implement onInit
   print("fetchdata----");
   fetchData();
   super.onInit();
 }

  addData(String galleryFile) async {

    print("my added file 1");
  var  notes ={
      "id":db.collection("prescription").doc().id.toString(),
      "name": nameController.text.toString(),
    "image":galleryFile
    };

  await db.collection("prescription").add(notes);

    print("my added file 2");

  }



 Future<String?> uploadImage(File imageFile) async {
   try {
     // Create a reference to the Firebase Storage
     String fileName = DateTime.now().millisecondsSinceEpoch.toString() + '.jpg'; // Unique file name
     Reference storageRef = storage.ref().child('prescriptions/$fileName');

     // Upload the file
     await storageRef.putFile(imageFile);

     // Get the download URL
     String downloadUrl = await storageRef.getDownloadURL();
     return downloadUrl; // Return the download URL
   } catch (e) {
     print("Error uploading image: $e");
     return null; // Handle error appropriately
   }
 }




 Future<void> addPrescription(String doctorName, String patientName, String age, List<Map<String, String>> medicines, File imageFile) async {
   // Upload the image and get the download URL
   String? imageUrl = await uploadImage(imageFile);

   if (imageUrl != null) {
     // Add prescription data to Firestore
     await db.collection('prescriptions').add({
       'doctorName': doctorName,
       'patientName': patientName,
       'age': age,
       'image': imageUrl, // Use the download URL
       'medicines': medicines,
       'timestamp': FieldValue.serverTimestamp(),
     });
   } else {
     print("Failed to upload image.");
   }
 }

 Future<List<Map<String, dynamic>>> fetchPrescriptions() async {
   QuerySnapshot snapshot = await db
       .collection('prescriptions')
       .orderBy('timestamp', descending: true) // Sort by timestamp
       .get();
   return snapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
 }



  fetchData() async {
    print("fetch data 1");
    var data = await db.collection("prescription").get();
    prescriptionList.value  = await data.docs.map((e) => e.data().values).toList();

    print("fetch data ${prescriptionList}");
    print("fetch data ${prescriptionList[0]}");
    print("fetch data ${prescriptionList[0]['name']}");
    print("fetch data 2");


  }

}
