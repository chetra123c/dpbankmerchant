// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers


import 'package:dpbankmerchant/Theme/Colors.dart';
import 'package:flutter/material.dart';

Widget Formlogin({
  required TextEditingController controller,
  required String hinText,
  required Icon prefixIcon,
  required String? Function(String? value) validator,
}){
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Container(
      child: TextFormField(
        validator: validator,
        keyboardType: TextInputType.emailAddress,
        cursorColor: Colors.black,
        controller:controller,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none
          ),
          filled: true,
          fillColor:colorsform,
          prefixIcon:prefixIcon,
          hintText:hinText,
          hintStyle: TextStyle(color: Colors.black),
        ),
        style: TextStyle(color: Colors.black),
      ),
    ),
  );
}