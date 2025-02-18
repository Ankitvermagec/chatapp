import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Doctor Prescription',
//       home: DoctorPrescriptionScreen(),
//     );
//   }
// }

class DoctorPrescriptionScreen extends StatefulWidget {
  @override
  _DoctorPrescriptionScreenState createState() =>
      _DoctorPrescriptionScreenState();
}

class _DoctorPrescriptionScreenState extends State<DoctorPrescriptionScreen> {
  TextEditingController patientNameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController doctorNameController = TextEditingController();
  TextEditingController medicineController = TextEditingController();
  TextEditingController dosageController = TextEditingController();
  TextEditingController frequencyController = TextEditingController();
  DateTime prescriptionDate = DateTime.now();

  List<Map<String, String>> medicines = [];

  void addMedicine() {
    setState(() {
      medicines.add({
        'medicine': medicineController.text,
        'dosage': dosageController.text,
        'frequency': frequencyController.text,
      });
      medicineController.clear();
      dosageController.clear();
      frequencyController.clear();
    });
  }

  Future<void> selectDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: prescriptionDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null && pickedDate != prescriptionDate) {
      setState(() {
        prescriptionDate = pickedDate;
      });
    }
  }

  // Generate the PDF Document
  Future<void> generatePDF() async {
    final pdf = pw.Document();

    // Add a page to the PDF
    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              // Patient Information
              pw.Text('Patient Information', style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold)),
              pw.Text('Name: ${patientNameController.text}'),
              pw.Text('Age: ${ageController.text}'),

              pw.SizedBox(height: 20),

              // Medicine Details
              pw.Text('Medicine Details', style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold)),
              ...medicines.map((medicine) {
                return pw.Text(
                  "Medicine: ${medicine['medicine']}, Dosage: ${medicine['dosage']}, Frequency: ${medicine['frequency']}",
                );
              }).toList(),

              pw.SizedBox(height: 20),

              // Prescription Date
              pw.Text('Prescription Date: ${prescriptionDate.toLocal()}'.split(' ')[0]),

              pw.SizedBox(height: 20),

              // Doctor Information
              pw.Text('Doctor Information', style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold)),
              pw.Text('Doctor: ${doctorNameController.text}'),
            ],
          );
        },
      ),
    );

    // Save the PDF to a file and open it
    await Printing.layoutPdf(onLayout: (PdfPageFormat format) async => pdf.save());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Doctor Prescription"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Patient Information
              Text("Patient Information", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              TextField(
                controller: patientNameController,
                decoration: InputDecoration(labelText: "Patient Name"),
              ),
              TextField(
                controller: ageController,
                decoration: InputDecoration(labelText: "Age"),
                keyboardType: TextInputType.number,
              ),

              SizedBox(height: 20),

              // Medicine Details
              Text("Medicine Details", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              TextField(
                controller: medicineController,
                decoration: InputDecoration(labelText: "Medicine Name"),
              ),
              TextField(
                controller: dosageController,
                decoration: InputDecoration(labelText: "Dosage"),
              ),
              TextField(
                controller: frequencyController,
                decoration: InputDecoration(labelText: "Frequency"),
              ),
              ElevatedButton(
                onPressed: addMedicine,
                child: Text("Add Medicine"),
              ),

              SizedBox(height: 20),

              // Display Medicine List
              medicines.isNotEmpty
                  ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: medicines.map((medicine) {
                  return Text(
                      "Medicine: ${medicine['medicine']}, Dosage: ${medicine['dosage']}, Frequency: ${medicine['frequency']}");
                }).toList(),
              )
                  : Container(),

              SizedBox(height: 20),

              // Prescription Date
              Text("Prescription Date", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              GestureDetector(
                onTap: selectDate,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text("${prescriptionDate.toLocal()}".split(' ')[0]),
                ),
              ),

              SizedBox(height: 20),

              // Doctor Information
              Text("Doctor Information", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              TextField(
                controller: doctorNameController,
                decoration: InputDecoration(labelText: "Doctor's Name"),
              ),

              SizedBox(height: 20),

              // Generate PDF Button
              ElevatedButton(
                onPressed: generatePDF,
                child: Text("Generate PDF"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
