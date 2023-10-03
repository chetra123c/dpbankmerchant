// ignore_for_file: sort_child_properties_last, camel_case_types

import 'package:dpbankmerchant/Collection/CollectionInfo/CollectionDatail/Collectiondetail.dart';
import 'package:dpbankmerchant/Collection/CollectionInfo/CoreList/CoreList.dart';
import 'package:dpbankmerchant/Collection/CollectionInfo/CoreList/CoreTableList.dart';
import 'package:dpbankmerchant/Collection/ThemeCollection/color.dart';
import 'package:dpbankmerchant/Collection/ThemeCollection/style.dart';
import 'package:dpbankmerchant/Collection/ThemeCollection/variable.dart';
import 'package:flutter/material.dart';

class uncollectedList extends StatefulWidget {
  const uncollectedList({super.key});

  @override
  State<uncollectedList> createState() => _uncollectedListState();
}

class _uncollectedListState extends State<uncollectedList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: painColor,
          title:const Text(UnCollected),
          leading: leadingAppbar(context),
        ),
        body: getBodyWidget(
          context:context,
          itemCount:countList,
          leftSideItemBuilder:generateFirstColumnRow,
          rightSideItemBuilder:generateRightHandSideColumnRow,
        )
    );
  }
  Widget generateFirstColumnRow(BuildContext context,int index,) {
    return Container(
      child: Row(
        children: <Widget>[
          listButtonview(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder:(context)=>const totalOverdueLoan()));
            },
            icon: const Icon(Icons.phone,size:16,color:whiteColor,),
          ),
          const SizedBox(width:5),
          listButtonview(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder:(context)=>const totalOverdueLoan()));
            },
            icon:const Icon(Icons.remove_red_eye,size:16,color:whiteColor,),
          ),
        ],
      ),
      width: 110,
      height: 52,
      padding:const EdgeInsets.fromLTRB(0, 0, 0, 0),
      alignment: Alignment.centerRight,
    );
  }
  Widget generateRightHandSideColumnRow(BuildContext context, int index) {
    return Row(
      children: <Widget>[
        listelement(text: Text('Chean chetra $index',style: textListelement)),
        listelement(text: const Text('+001 9999 9999',style: textListelement)),
        listelement(text: const Text('2019-01-01',style: textListelement)),
        listelement(text: const Text('N2/A',style: textListelement)),
        listelement(text: const Text('N2/A',style: textListelement)),
        listelement(text: const Text('N2/A',style: textListelement)),
        listelement(text: const Text('N2/A',style: textListelement)),
        listelement(text: const Text('N2/A',style: textListelement)),
        listelement(text: const Text('N2/A',style: textListelement)),
        listelement(text: const Text('N2/A',style: textListelement)),
        listelement(text: const Text('N2/A',style: textListelement)),
        listelement(text: const Text('N2/A',style: textListelement)),
      ],
    );
  }
}
