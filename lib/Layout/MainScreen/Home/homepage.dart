// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, use_full_hex_values_for_flutter_colors

import 'package:dpbankmerchant/Layout/Drawer/darwer.dart';
import 'package:dpbankmerchant/Theme/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  var scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorsbackground,
      key: scaffoldkey,
       drawer: appDrawer(),
      appBar: AppBar(
        backgroundColor:Appbarnonecolor,
        elevation: 0,
        leading:RawMaterialButton(
          shape:CircleBorder(),
          onPressed: (){
            scaffoldkey.currentState?.openDrawer();
          },
          child:Icon(CupertinoIcons.text_alignleft,size: 27,color: Colors.black,),
        ),
        actions: [
          RawMaterialButton(
            shape:CircleBorder(),
            onPressed:(){},
            child: Icon(CupertinoIcons.search,color: Colors.black,size: 27,),
          ),
        ],
      ),
      body:Center(

          child:Text("Home page")
      ),
    );
  }
}