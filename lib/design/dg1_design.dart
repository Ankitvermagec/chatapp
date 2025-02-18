import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '';
import '../Helper/image.dart';

class DG_Diaray1_Screen extends StatefulWidget {
  const DG_Diaray1_Screen({super.key});

  @override
  State<DG_Diaray1_Screen> createState() => _DG_Diaray1_ScreenState();
}

class _DG_Diaray1_ScreenState extends State<DG_Diaray1_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.keyboard_arrow_left, color: Color(0xff602600),),
            Text("Leads Dashboard",style: TextStyle(color: Color(0xff602600),fontSize: 20,fontWeight: FontWeight.w600),),
            Icon(Icons.keyboard_arrow_left, color: Colors.transparent),

          ],
        ) ,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(ProjectImages.dg_back,

            )
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(
              height: MediaQuery.of(context).size.height*0.10,
              width: MediaQuery.of(context).size.width*0.80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      ProjectImages.Rectangle
                  )
                )
              ),
              
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(
                      children: [
                        Image.asset(ProjectImages.hand,height: MediaQuery.of(context).size.height*0.10,width:MediaQuery.of(context).size.width*0.10 ,),

                       SizedBox(width: MediaQuery.of(context).size.width*0.02,),

                        Text("New Leads",style: TextStyle(color: Color(0xff602600),fontSize: 22,fontWeight: FontWeight.w500),),

                      ],
                    ),

                    Text("20",style: TextStyle(color: Color(0xff602600),fontSize: 28,fontWeight: FontWeight.w700),),

                  ],
                ),
              ),
            ),


            Container(
              height: MediaQuery.of(context).size.height*0.27,
              width: MediaQuery.of(context).size.width*0.80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.30,
                    width: MediaQuery.of(context).size.width*0.20,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          ProjectImages.Rectangleheight
                        )
                      )
                    ),
                    child: Column(
                      children: [
                        Image.asset(ProjectImages.hourglass,height: MediaQuery.of(context).size.height*0.10,width: MediaQuery.of(context).size.width*0.10,),

                        SizedBox(height: MediaQuery.of(context).size.height*0.08,),
                        Text("In Progress",style: TextStyle(color: Color(0xff602600),fontSize: 12,fontWeight: FontWeight.w700),),
                        SizedBox(height: MediaQuery.of(context).size.height*0.01,),

                        Text("20",style: TextStyle(color: Color(0xff602600),fontSize: 28,fontWeight: FontWeight.w700),),

                      ],
                    ),
                  ),

                  Container(
                    height: MediaQuery.of(context).size.height*0.30,
                    width: MediaQuery.of(context).size.width*0.20,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                ProjectImages.Rectangleheight
                            )
                        )
                    ),
                    child: Column(
                      children: [
                        Image.asset(ProjectImages.hourglass,height: MediaQuery.of(context).size.height*0.10,width: MediaQuery.of(context).size.width*0.10,),

                        SizedBox(height: MediaQuery.of(context).size.height*0.08,),
                        Text("In Progress",style: TextStyle(color: Color(0xff602600),fontSize: 12,fontWeight: FontWeight.w700),),
                        SizedBox(height: MediaQuery.of(context).size.height*0.01,),

                        Text("20",style: TextStyle(color: Color(0xff602600),fontSize: 28,fontWeight: FontWeight.w700),),

                      ],
                    ),
                  ),

                  Container(
                    height: MediaQuery.of(context).size.height*0.30,
                    width: MediaQuery.of(context).size.width*0.20,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                ProjectImages.Rectangleheight
                            )
                        )
                    ),
                    child: Column(
                      children: [
                        Image.asset(ProjectImages.hourglass,height: MediaQuery.of(context).size.height*0.10,width: MediaQuery.of(context).size.width*0.10,),

                        SizedBox(height: MediaQuery.of(context).size.height*0.08,),
                        Text("In Progress",style: TextStyle(color: Color(0xff602600),fontSize: 12,fontWeight: FontWeight.w700),),
                        SizedBox(height: MediaQuery.of(context).size.height*0.01,),

                        Text("20",style: TextStyle(color: Color(0xff602600),fontSize: 28,fontWeight: FontWeight.w700),),

                      ],
                    ),
                  )

                ],
              ),
            ),


            Container(
              height: MediaQuery.of(context).size.height*0.10,
              width: MediaQuery.of(context).size.width*0.80,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          ProjectImages.Rectangle
                      )
                  )
              ),

              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(
                      children: [
                        Image.asset(ProjectImages.hand,height: MediaQuery.of(context).size.height*0.10,width:MediaQuery.of(context).size.width*0.10 ,),

                        SizedBox(width: MediaQuery.of(context).size.width*0.02,),

                        Text("New Leads",style: TextStyle(color: Color(0xff602600),fontSize: 22,fontWeight: FontWeight.w500),),

                      ],
                    ),

                    Text("20",style: TextStyle(color: Color(0xff602600),fontSize: 28,fontWeight: FontWeight.w700),),

                  ],
                ),
              ),
            ),


            Container(
              height: MediaQuery.of(context).size.height*0.20,
              width: MediaQuery.of(context).size.width*0.80,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          ProjectImages.Rectangle
                      )
                  )
              ),

              child: Padding(
                padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.width*0.05,horizontal: MediaQuery.of(context).size.width*0.10),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image.asset(ProjectImages.ring,width: MediaQuery.of(context).size.width*0.25,height: MediaQuery.of(context).size.width*0.25),
                        SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                        Text("Pending",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w700),),

                      ],
                    ),
                    // SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                    Column(
                      children: [
                        Image.asset(ProjectImages.ring,width: MediaQuery.of(context).size.width*0.25,height: MediaQuery.of(context).size.width*0.25),

                        // Image.asset(ProjectImages.ring1,height: MediaQuery.of(context).size.height*0.30,width:MediaQuery.of(context).size.width*0.20 ,),
                        SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                        Text("All Clear",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w700),),

                      ],
                    )



                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
