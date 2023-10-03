// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors

import 'dart:async';
import 'package:dpbankmerchant/Layout/MainScreen/Login/Screen_login.dart';
import 'package:dpbankmerchant/Theme/Colors.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds:5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => loginscreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient:backgroud,
        ),
        child:Icon(Icons.apple,size: 80,)
    );
  }
}
