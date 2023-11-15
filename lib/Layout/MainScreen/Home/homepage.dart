// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, use_full_hex_values_for_flutter_colors

import 'package:dpbankmerchant/Layout/Drawer/darwer.dart';
import 'package:dpbankmerchant/Theme/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mnc_identifier_face/mnc_identifier_face.dart';
import 'package:mnc_identifier_face/model/liveness_detection_result_model.dart';

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
          child:Column(
            children: [
              RawMaterialButton(
                onPressed: (){
                  //Navigator.of(context).push(MaterialPageRoute(builder:(context)=>FlutterDemo(storage: CounterStorage())));
                  Navigator.of(context).push(MaterialPageRoute(builder:(context)=>MyApp()));
                },
                child:Text("Hello"),
              ),
            ],
          )
      ),
    );
  }
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  LivenessDetectionResult? livenessResult;
  final _mncIdentifierFacePlugin = MncIdentifierFace();
  Future<void> startDetection() async {
    try {
      LivenessDetectionResult livenessResult = await MncIdentifierFace().startLivenessDetection();
      debugPrint("result is $livenessResult");
      print('Hello');
    } catch (e) {
      debugPrint('Something goes unexpected with error is $e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Liveness Identifier Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(livenessResult?.toJson().toString() ?? "Data still empty"),
              ElevatedButton(
                onPressed: () {
                  startDetection();
                //  livenessResult = await _mncIdentifierFacePlugin.startLivenessDetection();
                  setState(() {});
                },
                child: const Text("START LIVENESS IDENTIFIER"),
              )
            ],
          ),
        ),
      ),
    );
  }
}