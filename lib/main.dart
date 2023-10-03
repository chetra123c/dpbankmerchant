import 'package:dpbankmerchant/Collection/CollectionInfo/CollectionDatail/Collectiondetail.dart';
import 'package:dpbankmerchant/Collection/dashbord/collectiondashbord.dart';
import 'package:dpbankmerchant/Layout/Splash_Screen/Splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
     // home: MyHomePage(),
      home: totalOverdueLoan(),
    );
  }
}

