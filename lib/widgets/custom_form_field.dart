import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFormField{
   TextEditingController controllers;
  String labelText;
  String hintText;
  Color hintColor;
  Color textColor;
  TextInputType? textInputType;
  bool obscure = false;

   CustomFormField({required this.controllers, required this.labelText, required this.hintText,
      required this.hintColor, required this.textColor, this.textInputType, required this.obscure});

   getCustomForm(){
     TextFormField textFormField = TextFormField(
       obscureText: obscure,
       keyboardType: textInputType,
       decoration: InputDecoration(
         labelText: labelText,
         labelStyle: TextStyle(
           color: textColor
         ),
         hintText: hintText,
         hintStyle: TextStyle(
           color: hintColor
         )
       ),
     );

     return textFormField;


   }
}