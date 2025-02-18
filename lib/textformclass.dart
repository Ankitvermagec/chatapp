import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormClass extends StatefulWidget {
  TextEditingController controller;
  String hintText;

  TextFormClass({required this.controller , required this.hintText});
  // const TextFormClass({super.key});

  @override
  State<TextFormClass> createState() => _TextFormClassState();
}

class _TextFormClassState extends State<TextFormClass> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        // contentPadding: EdgeInsets.symmetric(horizontal: 50),
          hintText: widget.hintText,
          filled: true,
          fillColor: Colors.red,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none

          ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
        )
      ),
      validator: (value) {
        if(value!.isEmpty){
          return "pls fill the first name";
        }
        return null;
      },
    );
  }
}
