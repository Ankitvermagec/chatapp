import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../home.dart';
import '../../login.dart';

class AuthGate extends StatefulWidget {
  const AuthGate({super.key});

  @override
  State<AuthGate> createState() => _AuthGateState();
}

class _AuthGateState extends State<AuthGate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context,snapshot) {

        //   if user is logged in
          if(snapshot.hasData){
            print("snapshot --------${snapshot}");
            print("snapshot --------${snapshot.hasData}");
             return HomePage();
          }
          // if user not logged in
          else{
             return Login();
          }

        },

      ),
    );
  }
}
