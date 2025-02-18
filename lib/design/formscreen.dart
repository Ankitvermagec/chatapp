import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../firebasecrud/getcontroller.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {

  Controller controller = Get.put(Controller());
  // TextEditingController nameController =  TextEditingController();
  // TextEditingController mobileController =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1),
          child: Column(
            children: [

              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              TextFormField(
                controller: controller.nameController,
                decoration: InputDecoration(
                  fillColor: Colors.black12,
                  filled: true,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width*0.020,
                    vertical: MediaQuery.of(context).size.height*0.020,
                  ),
                  hintText: "Enter Name",
                  // hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none
                  )

                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height*0.01,),

              TextFormField(
                controller: controller.mobileController,
                decoration: InputDecoration(
                    fillColor: Colors.black12,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width*0.020,
                      vertical: MediaQuery.of(context).size.height*0.020,
                    ),
                    hintText: "Enter Name",
                    // hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none
                    )

                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height*0.01,),

              Container(
                height: MediaQuery.of(context).size.height*0.06,
                width: MediaQuery.of(context).size.width*0.70,
               decoration: BoxDecoration(
                 color: Colors.blue,
                 borderRadius:  BorderRadius.circular(15),
               ),
                child: MaterialButton(
                  onPressed: () {
                    controller.AddData();
                  },
                  child: Text("Click me",style: TextStyle(color: Colors.white)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}




class ShowFormData extends StatefulWidget {
  const ShowFormData({super.key});

  @override
  State<ShowFormData> createState() => _ShowFormDataState();
}

class _ShowFormDataState extends State<ShowFormData> {
  @override
  Widget build(BuildContext context) {
    Controller controller =  Get.put(Controller())   ;

    return Scaffold(
      body: Obx(() {
        return    controller.BusinessList.isNotEmpty ?  Container(
          height: MediaQuery.of(context).size.height*0.5,
          // margin:EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.2,top:MediaQuery.of(context).size.height*0.2 ),
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05,
            vertical: MediaQuery.of(context).size.height*0.002,
          ),
          child: ListView.builder(
            itemCount: controller.BusinessList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    // contentPadding: EdgeInsets.all(40),
                    tileColor: Colors.purple,
                    leading: Icon(Icons.edit,color: Colors.white),
                    title: Text(controller.BusinessList[index]["name"].toString(),style: TextStyle(color: Colors.white)),
                    subtitle: Text(controller.BusinessList[index]["mobile"].toString(),style: TextStyle(color: Colors.white)),
                    trailing: Icon(Icons.delete,color: Colors.white),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                ],
              );

            },


          ),
        ) :
        Container(
          height: MediaQuery.of(context).size.height*0.5,
          // margin:EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.2,top:MediaQuery.of(context).size.height*0.2 ),
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05,
            vertical: MediaQuery.of(context).size.height*0.002,
          ),
        child: Text("No data found"),
        );
      },)


    );
  }
}
