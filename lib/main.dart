
import 'package:dpbankmerchant/Layout/Splash_Screen/Splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
     home: splash(),
      //home: totalOverdueLoan(),
    );
  }
}

