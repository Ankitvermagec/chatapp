import 'package:chat_app/textformclass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.020,),
                TextFormClass(controller:emailcontroller, hintText: 'email' ,),
                SizedBox(height: MediaQuery.of(context).size.height*0.020,),
                TextFormClass(controller:passwordcontroller, hintText: 'password' ,),
                SizedBox(height: MediaQuery.of(context).size.height*0.020,),
                Container(

                  height: MediaQuery.of(context).size.height*0.060,
                  width: MediaQuery.of(context).size.width*0.80,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: MaterialButton(
                    onPressed: () {  },
                    child: Text("click me",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    )),
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
