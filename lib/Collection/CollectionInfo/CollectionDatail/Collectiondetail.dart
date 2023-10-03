// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:dpbankmerchant/Collection/CollectionInfo/CoreList/CoreList.dart';
import 'package:dpbankmerchant/Collection/Radio/RadoiFun.dart';
import 'package:dpbankmerchant/Collection/ThemeCollection/color.dart';
import 'package:dpbankmerchant/Collection/ThemeCollection/style.dart';
import 'package:flutter/material.dart';

class totalOverdueLoan extends StatefulWidget {
  const totalOverdueLoan({Key? key}) : super(key: key);

  @override
  State<totalOverdueLoan> createState() => _totalOverdueLoanState();
}

class _totalOverdueLoanState extends State<totalOverdueLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarColor,
       // leading: leadingAppbar(context),
        title: const Text('Total Loan Overdue',style:styleTextAppbar,),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            const RadioFunction(),
            const SizedBox(height:5),
            const Padding(
              padding: EdgeInsets.only(left: 10.0,right: 15.0),
              child: SizedBox(
                height: 30,
                child: Row(
                  children: [
                    Text('Loan Collection Info',style: styleLoanTotal),
                  ],
                ),
              ),
            ),
            const SizedBox(height:20),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15.0),
              child: Container(
                width: double.infinity,
                height: 100,
                decoration:decorationStyle,
                child:Column(
                  children:  [
                     Container(
                       child: Text('Hello'),
                     )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


