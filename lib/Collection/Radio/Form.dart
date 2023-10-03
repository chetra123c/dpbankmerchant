
// ignore_for_file: prefer_const_constructors

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:dpbankmerchant/Collection/ThemeCollection/color.dart';
import 'package:flutter/material.dart';

Widget formCollection({
  required TextEditingController controller,
  required int maxLines,
  required String? Function(String? value) validator,
  Color ? color,
  String ? hintText,
}){
  return Container(
    decoration:decorationStyle,
    child: TextFormField(
      maxLines:maxLines,
      validator: validator,
      keyboardType: TextInputType.emailAddress,
      cursorColor: Colors.black,
      controller:controller,
      textInputAction: TextInputAction.search,
      obscureText:false,
      autofocus:false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none
        ),
        filled: true,
        fillColor:color,
        hintText:hintText,
        hintStyle: TextStyle(color: Colors.grey,fontSize: 16),
      ),
      style: const TextStyle(color: Colors.black,fontSize: 16),
    ),
  );
}
Widget dropDownList(
  {
    required TextEditingController controller,
    required List<String>? items,
    String ? hintText,
}){
  return Container(
    decoration:decorationStyle,
    child: CustomDropdown.search(
      hintText: hintText,
      controller: controller,
      fillColor:Colors.white,
      borderRadius: BorderRadius.circular(10),
      items: items,
    ),
  );
}