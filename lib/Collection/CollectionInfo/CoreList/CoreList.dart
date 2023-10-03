// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last

import 'package:dpbankmerchant/Collection/ThemeCollection/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// width headerWidgets list and list item count data

double ? width =130;
int  countList =11;

// container for list element data
Widget listelement({Text ? text,}){
  return Container(
    child: text,
    width:width,
    height: 52,
    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
    alignment: Alignment.centerLeft,
  );
}

// button view in table list

Widget listButtonview({
  required VoidCallback onPressed,
  required icon,
  Text ? text
}){
  return SizedBox(
    width: 50,
    height: 22,
    child: RawMaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      fillColor: painColor,
      onPressed:onPressed,
      child:icon,
    ),
  );
}

//Button Arrow back on Appbar  List

Widget leadingAppbar(BuildContext context){
  return RawMaterialButton(
    shape: CircleBorder(),
    onPressed: (){
      Navigator.of(context).pop();
    },
    child: Icon(CupertinoIcons.arrow_left,size:30,color:whiteColor),
  );
}


