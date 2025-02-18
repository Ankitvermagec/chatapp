import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Helper/image.dart';

class Doctor_Pdf extends StatefulWidget {
  const Doctor_Pdf({super.key});

  @override
  State<Doctor_Pdf> createState() => _Doctor_PdfState();
}

class _Doctor_PdfState extends State<Doctor_Pdf> {


  List arr =[
    {
      "medicine":"alobera jel",
      "dosages":"2",
      "Frequency" : "morning/evening/afternoon"
    },
    {
      "medicine":"sultan hazma",
      "dosages":"2",
      "Frequency" : "morning/afternoon"
    },
    {
      "medicine":"alobera jel",
      "dosages":"2",
      "Frequency" : "morning"
    },


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.30,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(ProjectImages.OIP)
              )
            ),
            child: Row(
              children: [
                Image.asset(ProjectImages.doctor_man,height: MediaQuery.of(context).size.height*0.20,color: Colors.white,),

              SizedBox(width: MediaQuery.of(context).size.width*0.2,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*0.1,),

                  Text("Bombay Hospital",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w700),),
                  SizedBox(height: MediaQuery.of(context).size.height*0.002,),
                  Text("Dr.HansRajHathi",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
                  SizedBox(height: MediaQuery.of(context).size.height*0.002,),
                  Text("(MBBS,MD)",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),

                  SizedBox(height: MediaQuery.of(context).size.height*0.06,),
                  Text("2/15/2025",style: TextStyle(color: Colors.blueGrey,fontSize: 15,fontWeight: FontWeight.w500),)


                ],
              )
              ],
            ),
          ),

          SizedBox(height: MediaQuery.of(context).size.height*0.02,),

          // Container(
          //   height: MediaQuery.of(context).size.height*0.5,
          //   decoration: BoxDecoration(
          //       image: DecorationImage(
          //           fit: BoxFit.cover,
          //           image: AssetImage(ProjectImages.hospitallogo)
          //       )
          //   ),
          //
          // ),
          Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.10),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
               // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image.asset(ProjectImages.hospitallogo,height: MediaQuery.of(context).size.height*0.10,color: Colors.black,),

                Text("Patient Name :",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
                SizedBox(width: MediaQuery.of(context).size.width*0.002,),
                Text("Ankit Verma",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400),),
                SizedBox(width: MediaQuery.of(context).size.width*0.05,),

                Text("Age :",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
                SizedBox(width: MediaQuery.of(context).size.width*0.002,),
                Text("20",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400),),

              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.005,),
          Divider(thickness:0.5,color: Colors.grey,indent: 22,endIndent: 22,),
          SizedBox(height: MediaQuery.of(context).size.height*0.005,),

          Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.10),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image.asset(ProjectImages.hospitallogo,height: MediaQuery.of(context).size.height*0.10,color: Colors.black,),


                Text("Medicine",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
                SizedBox(width: MediaQuery.of(context).size.width*0.20,),

                Text("dosages",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
                SizedBox(width: MediaQuery.of(context).size.width*0.06,),
                Text("Frequency",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),

              ],
            ),
          ),

          SizedBox(height: MediaQuery.of(context).size.height*0.05,),


      ...arr.map((e)
      {
        return Padding(
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.10,bottom: MediaQuery.of(context).size.height*0.03),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image.asset(ProjectImages.hospitallogo,height: MediaQuery.of(context).size.height*0.10,color: Colors.black,),


              Container(
                  width: MediaQuery.of(context).size.width*0.35,
                  // color: Colors.red,
                  child: Text("MedicineMedicineMedicineMedicine",style:
                  TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w300),)
              ),
              // SizedBox(width: MediaQuery.of(context).size.width*0.20,),

              Container(
                  width: MediaQuery.of(context).size.width*0.20,
                  // color: Colors.grey,
                  alignment: Alignment.center,
                  child: Center(child: Text("2",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w300),))),
              SizedBox(width: MediaQuery.of(context).size.width*0.02,),
              Container(
                  width: MediaQuery.of(context).size.width*0.30,
                  // color: Colors.blueGrey,
                  child: Text("morning/evening/afternoon",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w300),)
              ),

            ],
          ),
        );
      }).toList(),


          SizedBox(height: MediaQuery.of(context).size.height*0.05,),


    Padding(
    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.10,right: MediaQuery.of(context).size.width*0.10),
    child:  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(ProjectImages.sign,color: Colors.transparent,),

        Image.asset(ProjectImages.sign)
      ],),
    )





        ],
      ),
    );
  }
}
