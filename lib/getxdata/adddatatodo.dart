import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getxclass.dart';


class AddDataTodo extends StatefulWidget {
  const AddDataTodo({super.key});

  @override
  State<AddDataTodo> createState() => _AddDataTodoState();
}

class _AddDataTodoState extends State<AddDataTodo> {

  TextEditingController textdatacontroller =TextEditingController();
  List addvalue =[];
  
  @override
  Widget build(BuildContext context) {

   final controller = Get.put(FetchDataClass());

    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: textdatacontroller,
            decoration: InputDecoration(
              fillColor: Colors.greenAccent,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              )
            ),
          ),

          Obx(() {
            return  Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(15),
              ),
              child: MaterialButton(
                onPressed: () {
                  controller.addToDo.add(textdatacontroller);
                  Get.to(ShowTodo());
                },
                child: Text("enter the data"),
              ),
            );
          })

          
        ],
      ),
    );
  }
}




class ShowTodo extends StatelessWidget {

   ShowTodo({super.key});

  TextEditingController controller1=TextEditingController();


  @override
  Widget build(BuildContext context) {

    final controller = Get.put(FetchDataClass());

    return Scaffold(
      body: Obx(
        () {
          return Container(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: controller.addToDo.length,
              itemBuilder: (context, index) {
                return controller.ourIndex == index ?Row(
                  children: [
                    Text(
                      controller.addToDo[index],
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        controller.ourIndex = index;
                        controller1.text = controller.addToDo[index];
                      },
                        child: Icon(Icons.edit,color: Colors.black,)
                    ),


                    InkWell(
                        onTap: () {
                          controller.addToDo.removeAt(index);
                        },
                        child: Icon(Icons.delete,color: Colors.black,))
                  ],
                ) : Row(
                  children: [
                    TextFormField(
                      controller: controller1,
                      decoration: InputDecoration(
                          fillColor: Colors.grey,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                          )
                      ),
                    ),

                    Container(
                      height: MediaQuery.of(context).size.height*0.20,
                      width: MediaQuery.of(context).size.width*0.45,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: MaterialButton(
                        onPressed: (){
                          // controller.addToDo.insert(index, element)
                        } ,
                        child: Text("Edit"),
                      ),
                    )
                  ],
                );
              },),
          );
        },
      ),
    );
  }
}
