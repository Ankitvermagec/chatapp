import 'dart:io';
import 'dart:typed_data';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pdf/pdf.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import '../Helper/image.dart';
import '../firebasecrud/prescription_controller.dart';
import 'doctor_pdf.dart';
import 'package:intl/intl.dart';


class DoctorPrescription2 extends StatefulWidget {
  const DoctorPrescription2({super.key});

  @override
  State<DoctorPrescription2> createState() => _DoctorPrescription2State();
}

class _DoctorPrescription2State extends State<DoctorPrescription2> {

  File? galleryFile;
  final picker = ImagePicker();

  // Define a variable to store the selected chip
  String? _selectedChip;

  List<String> choiceChip = ["Morning", "Afternoon", "Evening"];
  // List choiceChip = ["Morning", "Afternoon", "Evening"];
  List<String> newChoiceChip = [];
  // List newChoiceChip = [];
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {

    PrescriptionController  getController = Get.put(PrescriptionController());

    return SafeArea(
      child: Scaffold(
        body:Obx(() {
          return   SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery
                  .of(context)
                  .size
                  .width * 0.050, vertical: MediaQuery
                  .of(context)
                  .size
                  .height * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.02,),

                  Text("Doctor Information", style: TextStyle(color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),),
                  SizedBox(height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.05,),
                  TextField(
                    controller: getController.hospitalNameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),

                        contentPadding: EdgeInsets.symmetric(
                          horizontal: MediaQuery
                              .of(context)
                              .size
                              .width * 0.10, vertical: MediaQuery
                            .of(context)
                            .size
                            .height * 0.02,),
                        labelText: "Hospital Name"),),
                  SizedBox(height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.05,),
                  TextField(
                    controller: getController.nameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),

                        contentPadding: EdgeInsets.symmetric(
                          horizontal: MediaQuery
                              .of(context)
                              .size
                              .width * 0.10, vertical: MediaQuery
                            .of(context)
                            .size
                            .height * 0.02,),
                        labelText: "Doctor Name"),),
                  SizedBox(height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.05,),
                  TextField(
                    controller: getController.doctorQualificationController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),

                        hintText: "MBBS,BHMS",
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: MediaQuery
                              .of(context)
                              .size
                              .width * 0.10, vertical: MediaQuery
                            .of(context)
                            .size
                            .height * 0.02,),
                        labelText: "Doctor Qualification"),),
                  SizedBox(height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.05,),
                  SizedBox(height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.05,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Doctor Logo", style: TextStyle(color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w700),),
                          SizedBox(height: MediaQuery
                              .of(context)
                              .size
                              .height * 0.05,),
                          InkWell(
                            onTap: () {
                              _showPicker(context: context);
                            },
                            child:galleryFile != null?
                            Container(
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.160,
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(width: 1, color: Colors.grey)
                              ),
                              child: Image.file(galleryFile!,fit: BoxFit.cover),
                            )
                                :
                            Container(
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.160,
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(width: 1, color: Colors.grey)
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Doctor Sign", style: TextStyle(color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w700),),
                          SizedBox(height: MediaQuery
                              .of(context)
                              .size
                              .height * 0.05,),
                          Container(
                            height: MediaQuery
                                .of(context)
                                .size
                                .height * 0.160,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(width: 1, color: Colors.grey)
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.05,),

                  Text("Patient Information", style: TextStyle(color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),),
                  SizedBox(height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.05,),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: getController.patientnameController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.05, vertical: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.02,),
                              labelText: "FirstName"
                          ),
                        ),
                      ),

                      SizedBox(width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.05,),

                      Expanded(
                        child: TextField(
                          controller: getController.patientLastnameController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.05, vertical: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.02,),
                              labelText: "LastName"
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.05,),

                  TextField(
                    controller: getController.patientageController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: MediaQuery
                              .of(context)
                              .size
                              .width * 0.05, vertical: MediaQuery
                            .of(context)
                            .size
                            .height * 0.02,),
                        labelText: "Age"
                    ),
                  ),

                  SizedBox(height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.05,),

                  Text("Medicine Details", style: TextStyle(color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),),

                  SizedBox(height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.05,),


                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: TextField(
                          controller: getController.medicineNameController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.07, vertical: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.02,),
                              labelText: "Medicine Name"
                          ),
                        ),
                      ),
                      SizedBox(width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.04,),

                      Expanded(
                        flex: 1,
                        child: TextField(
                          controller: getController.dosageNameController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.02, vertical: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.02,),
                              labelText: "dosages"
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.03,),

                  Text("Medicine Frequency", style: TextStyle(color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),),

                  SizedBox(height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.02,),

                  Wrap(
                    spacing: 10.0,
                    children: choiceChip
                        .asMap()
                        .entries
                        .map((entry) {
                      int index = entry.key;
                      String value = entry.value;
                      bool isSelected = newChoiceChip.contains(value);
                      return InkWell(
                        onTap: () {
                          print("click 1");


                          print("----->>>$newChoiceChip");
                          if (isSelected) {
                            print("removed");

                            setState(() {
                              newChoiceChip.remove(value);
                            });

                            print("----->>>$newChoiceChip");


                          } else {
                            print("added");
                            setState(() {
                              newChoiceChip.add(value);
                            });
                            print("----->>>${newChoiceChip}");

                          }
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              color: isSelected ? Colors.yellow : Colors.grey
                                  .shade200,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Text(value.toString()),
                        ),
                      );
                    }).toList(),
                  ),

                  SizedBox(height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.03,),

                  Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.050,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.40,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: MaterialButton(
                      onPressed: () {

                        getController.addMedicineList.add(
                          {"medicine": getController.medicineNameController.text.toString(), "dosages": getController.dosageNameController.text.toString(), "Frequency": newChoiceChip,},
                        );

                        print("------->>>>${getController.addMedicineList}");
                      },
                      child: Text(
                          "Add Medicine", style: TextStyle(color: Colors.white)),
                    ),
                  ),


                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Text(
                  //       "Medicine",
                  //       style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  //     ),
                  //     Text(
                  //       "Dosages",
                  //       style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  //     ),
                  //     Text(
                  //       "Frequency",
                  //       style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  //     ),
                  //     Text(
                  //       "Edit/Delete",
                  //       style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  //     ),
                  //   ],
                  // ),

                  SizedBox(height: 2,),

                  ...getController.addMedicineList.map((element) {
                    String medicine = element["medicine"]??"unknown medicine";
                    String dosages = element["dosages"]?? "0";
                    // String frequency = element["Frequency"];

                    // Ensure that Frequency is a list and join it with '/'
                    String frequency = (element["Frequency"] is List)
                        ? (element["Frequency"] as List).join("/") // Join if it's a list
                        : ""; // Return an empty string if it's not a list


                    return Container(
                      // color: Colors.pink,
                      // padding: EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                         padding: EdgeInsets.symmetric(horizontal: 15,vertical: 4),
                        margin: EdgeInsets.only(bottom: 7),
                        decoration: BoxDecoration(
                            color: Colors.pink.shade200,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Column(
                          children: [

                            Row(
                              children: [
                                Text(
                                  "Medicine :",
                                  style: TextStyle(color:Colors.white,fontSize: 16, fontWeight: FontWeight.w500),
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                                Container(
                                  width: MediaQuery.of(context).size.width*0.4,
                                  child: Text(
                                    "$medicine",
                                    style: TextStyle(color:Colors.white,fontSize: 16, fontWeight: FontWeight.w500),
                                  ),
                                ),

                                Row(
                                  children: [
                                    Icon(Icons.edit,color:Colors.white),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.001),
                                    Icon(Icons.delete,color:Colors.white)
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Frequency :",
                                      style: TextStyle(color:Colors.white,fontSize: 16, fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                                    Container(
                                      width: MediaQuery.of(context).size.width*0.3,
                                      // color: Colors.yellow,
                                      child: Text(
                                        "$frequency",
                                        style: TextStyle(color:Colors.white,fontSize: 16, fontWeight: FontWeight.w500),
                                      ),
                                    ),

                                  ],
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Text(
                                        "Dosages :",
                                        style: TextStyle(color:Colors.white,fontSize: 16, fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                                      Text(
                                        "$dosages",
                                        style: TextStyle(color:Colors.white,fontSize: 16, fontWeight: FontWeight.w500),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),


                  // Wrap(
                  //   spacing: 10.0, // Horizontal space between chips
                  //   children: [
                  //     ChoiceChip(
                  //       label: Text("Morning"),
                  //       selected: _selectedChip == "Morning",
                  //       onSelected: (bool selected) {
                  //         setState(() {
                  //           _selectedChip = selected ? "Morning" : null;
                  //         });
                  //       },
                  //     ),
                  //     ChoiceChip(
                  //       label: Text("Afternoon"),
                  //       selected: _selectedChip == "Afternoon",
                  //       onSelected: (bool selected) {
                  //         setState(() {
                  //           _selectedChip = selected ? "Afternoon" : null;
                  //         });
                  //       },
                  //     ),
                  //     ChoiceChip(
                  //       label: Text("Evening"),
                  //       selected: _selectedChip == "Evening",
                  //       onSelected: (bool selected) {
                  //         setState(() {
                  //           _selectedChip = selected ? "Evening" : null;
                  //         });
                  //       },
                  //     ),
                  //   ],
                  // ),

                  SizedBox(height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.05,),

                  Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.060,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: MaterialButton(
                      onPressed: () {

                        // Collect data from your text fields
                        String hospitalName = getController.hospitalNameController.text.toString();
                        String doctorName = getController.nameController.text.toString();
                        String doctorQualification = getController.doctorQualificationController.text.toString();
                        String patientName = getController.patientnameController.text.toString();
                        String patientLastName = getController.patientLastnameController.text.toString();
                        String age = getController.patientageController.text.toString();

                        // String patientName = "Ankit Verma"; // Replace with actual input
                        // String age = "20"; // Replace with actual input
                        String image = galleryFile.toString();
                        // List<Map<String, String>> medicines =getController.addMedicineList as List<Map<String, String>>;



                        ///working
                  /*      List<Map<String, String>> medicines = getController.addMedicineList.map((item) {
                          return Map<String, String>.from(item); // Ensure each item is a Map<String, String>
                        }).toList();*/


                        // When calling addPrescription
                        List<Map<String, dynamic>> medicines = getController.addMedicineList.map((item) {
                          return {
                            'medicine': item['medicine'],
                            'dosages': item['dosages'],
                            'Frequency': (item['Frequency'] as List<String>).join(','), // Convert list to string
                          };
                        }).toList();

                        /*List<Map<String, String>> medicines = [
                          {"medicine": "alobera jel", "dosages": "2", "Frequency": "morning/evening/afternoon"},
                          // Add more medicines as needed
                        ];*/

                        // Add prescription to Firestore
                        getController.addPrescription(hospitalName,doctorQualification,doctorName, patientName, age,patientLastName, medicines).then((_) {
                          // After adding, generate the PDF
                          generatePdf();
                        });

                        /*
                      // getController.addData(galleryFile.toString());
                      generatePdf();*/
                      },
                      child: Text("Print",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  )

                ],
              ),
            ),
          );

        }),



      ),
    );
  }


  void _showPicker({
    required BuildContext context,
  }) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Photo Library'),
                onTap: () {
                  getImage(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: () {
                  getImage(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }


  Future getImage(ImageSource img,) async {
    final pickedFile = await picker.pickImage(source: img);
    XFile? xfilePick = pickedFile;
    setState(
          () {
        if (xfilePick != null) {
          galleryFile = File(pickedFile!.path);
          print("Gallery File path ---- >>>${galleryFile}");
        } else {
          ScaffoldMessenger.of(context).showSnackBar( // is this context <<<
              const SnackBar(content: Text('Nothing is selected')));
        }
      },
    );
  }




   /* Future<void> generatePdf() async {
    List arr = [
      {
        "medicine": "alobera jel",
        "dosages": "2",
        "Frequency": "morning/evening/afternoon"
      },
      {
        "medicine": "sultan hazma",
        "dosages": "2",
        "Frequency": "morning/afternoon"
      },
      {
        "medicine": "alobera jel",
        "dosages": "2",
        "Frequency": "morning"
      },
    ];



    final pdf = pw.Document();

    // Load images from assets (you need to load them manually)
    final imageDoctor = await _loadImage('assets/images/doctor_man.png');
    final imageHospitalLogo = await _loadImage('assets/images/OIP.jpg');
    final imageSign = await _loadImage('assets/images/sign.png');

    PrescriptionController  getController = Get.put(PrescriptionController());


    // Fetch image path dynamically from your data (assuming it's coming from prescriptionList)
    String imagePath = getController.prescriptionList.isNotEmpty ? getController.prescriptionList[0]['image'] : "";

    // Load the image from the path
    final imageDoctorPath = await _loadImageFromPath(imagePath);




    pdf.addPage(
      pw.Page(
        // pageFormat: PdfPageFormat.a4, // Set the page format to A4 size
        build: (pw.Context context) {
          return pw.Column(
            children: [
              // Hospital Header with Doctor's Info
              pw.Container(
                height: 250, // Adjust the height of the header to cover more of the page
                decoration: pw.BoxDecoration(
                  image: pw.DecorationImage(
                    fit: pw.BoxFit.cover,
                    image: pw.MemoryImage(imageHospitalLogo),
                  ),
                ),
                child: pw.Row(
                  // mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.SizedBox(width: 50),
                    pw.Image(pw.MemoryImage(imageDoctor), height: 120),
                    pw.SizedBox(width: 120),
                    pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.center,
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.SizedBox(height: 40),

                        pw.Text(
                          "Bombay Hospital",
                          style: pw.TextStyle(fontSize: 20, fontWeight: pw.FontWeight.bold, color: PdfColor.fromInt(0xFFFFFFFF)),
                        ),
                        pw.Text(
                          getController.prescriptionList[0]['name'].toString(),
                          // "Dr. HansRaj Hathi",
                          style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold, color: PdfColor.fromInt(0xFFFFFFFF)),
                        ),
                        pw.Text(
                          "(MBBS, MD)",
                          style: pw.TextStyle(fontSize: 15, color: PdfColor.fromInt(0xFFFFFFFF)),
                        ),
                        pw.SizedBox(height: 50),
                        pw.Text(
                          "2/15/2025",
                          style: pw.TextStyle(fontSize: 15, color: PdfColor.fromInt(0xFF607D8B)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              pw.SizedBox(height: 20),

              // Patient Information
              pw.Row(
                children: [
                  pw.Text("Patient Name: ", style: pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold)),
                  pw.Text("Ankit Verma", style: pw.TextStyle(fontSize: 15)),
                  pw.SizedBox(width: 20),
                  pw.Text("Age: ", style: pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold)),
                  pw.Text("20", style: pw.TextStyle(fontSize: 15)),
                ],
              ),
              pw.Divider(),

              pw.SizedBox(height: 20),

              // Medicine Table Header
              pw.Row(
                children: [
                  pw.Expanded(child: pw.Text("Medicine", style: pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold))),
                  pw.Expanded(child: pw.Text("Dosages", style: pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold))),
                  pw.Expanded(child: pw.Text("Frequency", style: pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold))),
                ],
              ),
              pw.SizedBox(height: 10),

              // Medicine List (dynamically generated)
              ...arr.map((e) {
                return pw.Row(
                  children: [
                    pw.Expanded(child: pw.Text(e["medicine"], style: pw.TextStyle(fontSize: 13))),
                    pw.Expanded(child: pw.Text(e["dosages"], style: pw.TextStyle(fontSize: 13))),
                    pw.Expanded(child: pw.Text(e["Frequency"], style: pw.TextStyle(fontSize: 13))),
                  ],
                );
              }).toList(),

              // Signature area (example signature)
              pw.SizedBox(height: 100),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Opacity(
                    opacity: 0.0, // Set opacity to 0 to make it transparent
                    child: pw.Image(pw.MemoryImage(imageSign), width: 100),
                  ),
                  pw.Image(pw.MemoryImage(imageDoctorPath), width: 100),
                  // pw.Image(pw.MemoryImage(imageSign), width: 100),
                ],
              ),
            ],
          );
        },
      ),
    );

    // Save the PDF to a file and open it
    await Printing.layoutPdf(onLayout: (PdfPageFormat format) async => pdf.save());
  }*/






  Future<void> generatePdf() async {
    // Fetch the prescription data from Firestore

    PrescriptionController getController = Get.put(PrescriptionController());

    List<Map<String, dynamic>> prescriptions = await getController.fetchPrescriptions();
    print("Fetched prescriptions: $prescriptions");

    // Assuming you want to use the latest prescription
    if (prescriptions.isNotEmpty) {
      // Map<String, dynamic> latestPrescription = prescriptions.last;
      Map<String, dynamic> latestPrescription = prescriptions.first; // Get the latest prescription
      print("Latest Prescription: $latestPrescription");
      final pdf = pw.Document();

      // Load images from assets
      final imageDoctor = await _loadImage('assets/images/doctor_man.png');
      final imageHospitalLogo = await _loadImage('assets/images/OIP.jpg');
      final imageSign = await _loadImage('assets/images/sign.png');

      // // Load the doctor's image from the file path
      // final doctorImagePath = latestPrescription['image']; // Assuming this is the path to the doctor's image
      // print("Doctor Image Path: $doctorImagePath"); // Debugging line
      // final doctorImage = await _loadImageFromPath(doctorImagePath);

      // Attempt to load the image
      try {
        // final doctorImage = await _loadImageFromPath(doctorImagePath);
        // // Continue with PDF generation...
        // print("----- doctorImage ----: $doctorImage"); // Debugging line
        //


        pdf.addPage(
          pw.Page(
            build: (pw.Context context) {
              return pw.Column(
                children: [
                  // Hospital Header with Doctor's Info
                  pw.Container(
                    height: 250,
                    decoration: pw.BoxDecoration(
                      image: pw.DecorationImage(
                        fit: pw.BoxFit.cover,
                        image: pw.MemoryImage(imageHospitalLogo),
                      ),
                    ),
                    child: pw.Row(
                      children: [
                        pw.SizedBox(width: 50),
                        pw.Image(pw.MemoryImage(imageDoctor), height: 120),
                        pw.SizedBox(width: 120),
                        pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.center,
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.SizedBox(height: 40),
                            pw.Container(
                              width: 200,
                              child: pw.Text(latestPrescription['hospitalName'], style: pw.TextStyle(fontSize: 20, fontWeight:
                              pw.FontWeight.bold, color: PdfColor.fromInt(0xFFFFFFFF)
                              ),
                                  maxLines: 2),

                            ),
                            pw.Container(
                              // color: PdfColor.fromInt(0xFF000000),
                              width: 200,
                              child: pw.Text(latestPrescription['doctorName'],
                                  style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold,
                                      color: PdfColor.fromInt(0xFFFFFFFF)),
                                  maxLines: 2
                              ),

                            ),
                            pw.Container(
                              width: 200,
                              child: pw.Text("(${latestPrescription['doctorQualification']})", style: pw.TextStyle(
                                  fontSize: 16, fontWeight: pw.FontWeight.bold, color: PdfColor.fromInt(0xFFFFFFFF),
                              ),
                                maxLines: 2
                              ),
                            ),
                            pw.SizedBox(height: 40),
                            pw.Text(DateFormat('MM/dd/yyyy').format(DateTime.now()), style: pw.TextStyle(fontSize: 15, color: PdfColor.fromInt(0xFF607D8B))),
                          ],
                        ),
                      ],
                    ),
                  ),
                  pw.SizedBox(height: 20),
                  // Patient Information
                  pw.Row(
                    children: [
                      pw.Text("Patient Name: ", style: pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold)),
                      pw.Text("${latestPrescription['patientName']} ${latestPrescription['patientLastName']}", style: pw.TextStyle(fontSize: 15)),
                      pw.SizedBox(width: 20),
                      pw.Text("Age: ", style: pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold)),
                      pw.Text(latestPrescription['age'], style: pw.TextStyle(fontSize: 15)),
                    ],
                  ),
                  pw.Divider(),
                  pw.SizedBox(height: 20),
                  // Medicine Table Header
                  pw.Row(
                    // crossAxisAlignment: pw.CrossAxisAlignment.center,
                    // mainAxisAlignment: pw.MainAxisAlignment.center,
                    children: [
                      pw.Expanded(child: pw.Text("Medicine", style: pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold))),
                      pw.SizedBox(width: 55),
                      pw.Expanded(child: pw.Text("Dosages", style: pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold))),
                      pw.Expanded(child: pw.Text("Frequency", style: pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold))),
                    ],
                  ),
                  pw.SizedBox(height: 10),
                  // Medicine List (dynamically generated)
                  ...List<Map<String, dynamic>>.from(latestPrescription['medicines']).map((e) {
                    // Convert each Map<String, dynamic> to Map<String, String>/
                    Map<String, String> medicine = {
                      'medicine': e['medicine'] as String,
                      'dosages': e['dosages'] as String,
                      'Frequency': e['Frequency'] as String,
                    };
                    return pw.Row(
                      // mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Expanded(child: pw.Text(medicine["medicine"].toString(), style: pw.TextStyle(fontSize: 13))),
                        pw.Expanded(child:pw.Container(
                          // padding: pw.EdgeInsets.only(left: 5),
                            // color:PdfColor.fromInt(0xFF000000),
                            child: pw.Center(
                              child:  pw.Text(medicine["dosages"].toString(), style: pw.TextStyle(fontSize: 13)),
                            ),
                           ),

                        ),
                        pw.Expanded(child: pw.Text(medicine["Frequency"].toString(), style: pw.TextStyle(fontSize: 13))),
                      ],
                    );
                  }).toList(),
                  // Signature area
                  pw.SizedBox(height: 100),
                  pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Opacity(
                        opacity: 0.0,
                        child: pw.Image(pw.MemoryImage(imageSign), width: 100),
                      ),
                      // pw.Image(pw.MemoryImage(doctorImage), width: 100),
                      pw.Image(pw.MemoryImage(imageSign), width: 100),
                    ],
                  ),
                ],
              );
            },
          ),
        );

      } catch (e) {
        print("Error loading image: $e");
      }



      // Save the PDF to a file and open it
      await Printing.layoutPdf(onLayout: (PdfPageFormat format) async => pdf.save());
    } else {
      // Handle the case where there are no prescriptions
      print("No prescriptions found.");
    }
  }





  Future<Uint8List> _loadImageFromPath(String filePath) async {
    // Remove the 'File: ' prefix if it exists
    String actualPath = filePath.replaceFirst('File: ', '').trim();

    // Load the image as bytes
    final file = File(actualPath);

    // Check if the file exists
    if (await file.exists()) {
      print("File found at path: $actualPath"); // Debugging line
      List<int> bytes = await file.readAsBytes();  // Read the file as bytes
      return Uint8List.fromList(bytes);  // Convert to Uint8List
    } else {
      print("File not found at path: $actualPath"); // Debugging line
      throw Exception('Image file not found at path: $actualPath');
    }
  }



















/*  Future<void> generatePdf() async {
    List arr = [
      {
        "medicine": "alobera jel",
        "dosages": "2",
        "Frequency": "morning/evening/afternoon"
      },
      {
        "medicine": "sultan hazma",
        "dosages": "2",
        "Frequency": "morning/afternoon"
      },
      {
        "medicine": "alobera jel",
        "dosages": "2",
        "Frequency": "morning"
      },
    ];


    
    final pdf = pw.Document();

    // Load images from assets (you need to load them manually)
    final imageDoctor = await _loadImage('assets/images/doctor_man.png');
    final imageHospitalLogo = await _loadImage('assets/images/OIP.jpg');
    final imageSign = await _loadImage('assets/images/sign.png');

    pdf.addPage(
      pw.Page(
        // pageFormat: PdfPageFormat.a4, // Set the page format to A4 size
        build: (pw.Context context) {
          return pw.Column(
            children: [
              // Hospital Header with Doctor's Info
              pw.Container(
                height: 250, // Adjust the height of the header to cover more of the page
                decoration: pw.BoxDecoration(
                  image: pw.DecorationImage(
                    fit: pw.BoxFit.cover,
                    image: pw.MemoryImage(imageHospitalLogo),
                  ),
                ),
                child: pw.Row(
                  // mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.SizedBox(width: 50),
                    pw.Image(pw.MemoryImage(imageDoctor), height: 120),
                    pw.SizedBox(width: 120),
                    pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.center,
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.SizedBox(height: 40),

                        pw.Text(
                          "Bombay Hospital",
                          style: pw.TextStyle(fontSize: 20, fontWeight: pw.FontWeight.bold, color: PdfColor.fromInt(0xFFFFFFFF)),
                        ),
                        pw.Text(
                          "Dr. HansRaj Hathi",
                          style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold, color: PdfColor.fromInt(0xFFFFFFFF)),
                        ),
                        pw.Text(
                          "(MBBS, MD)",
                          style: pw.TextStyle(fontSize: 15, color: PdfColor.fromInt(0xFFFFFFFF)),
                        ),
                        pw.SizedBox(height: 50),
                        pw.Text(
                          "2/15/2025",
                          style: pw.TextStyle(fontSize: 15, color: PdfColor.fromInt(0xFF607D8B)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              pw.SizedBox(height: 20),

              // Patient Information
              pw.Row(
                children: [
                  pw.Text("Patient Name: ", style: pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold)),
                  pw.Text("Ankit Verma", style: pw.TextStyle(fontSize: 15)),
                  pw.SizedBox(width: 20),
                  pw.Text("Age: ", style: pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold)),
                  pw.Text("20", style: pw.TextStyle(fontSize: 15)),
                ],
              ),
              pw.Divider(),

              pw.SizedBox(height: 20),

              // Medicine Table Header
              pw.Row(
                children: [
                  pw.Expanded(child: pw.Text("Medicine", style: pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold))),
                  pw.Expanded(child: pw.Text("Dosages", style: pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold))),
                  pw.Expanded(child: pw.Text("Frequency", style: pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold))),
                ],
              ),
              pw.SizedBox(height: 10),

              // Medicine List (dynamically generated)
              ...arr.map((e) {
                return pw.Row(
                  children: [
                    pw.Expanded(child: pw.Text(e["medicine"], style: pw.TextStyle(fontSize: 13))),
                    pw.Expanded(child: pw.Text(e["dosages"], style: pw.TextStyle(fontSize: 13))),
                    pw.Expanded(child: pw.Text(e["Frequency"], style: pw.TextStyle(fontSize: 13))),
                  ],
                );
              }).toList(),

              // Signature area (example signature)
              pw.SizedBox(height: 100),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Opacity(
                    opacity: 0.0, // Set opacity to 0 to make it transparent
                    child: pw.Image(pw.MemoryImage(imageSign), width: 100),
                  ),
                  // pw.Image(pw.MemoryImage(imageSign), width: 100,),
                  pw.Image(pw.MemoryImage(imageSign), width: 100),
                ],
              ),
            ],
          );
        },
      ),
    );

    // Save the PDF to a file and open it
    await Printing.layoutPdf(onLayout: (PdfPageFormat format) async => pdf.save());
  }*/


  Future<Uint8List> _loadImage(String path) async {
    final byteData = await rootBundle.load(path);
    return byteData.buffer.asUint8List();
  }


}