// ignore_for_file: camel_case_types, sort_child_properties_last, prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api
import 'package:dpbankmerchant/Collection/CollectionInfo/CollectionDatail/Collectiondetail.dart';
import 'package:dpbankmerchant/Collection/CollectionInfo/CoreList/CoreList.dart';
import 'package:dpbankmerchant/Collection/CollectionInfo/CoreList/CoreTableList.dart';
import 'package:dpbankmerchant/Collection/ThemeCollection/color.dart';
import 'package:dpbankmerchant/Collection/ThemeCollection/style.dart';
import 'package:dpbankmerchant/Collection/ThemeCollection/variable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///Navigator.of(context).push(MaterialPageRoute(builder:(context)=>totalOverdueLoan()));

class totalListCollect extends StatefulWidget {

  @override
  _totalListCollectState createState() => _totalListCollectState();
}

class _totalListCollectState extends State<totalListCollect> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: painColor,
        title: Text(totalList),
        leading: leadingAppbar(context),
      ),
      body: getBodyWidget(
        context:context,
        itemCount:countList,
        leftSideItemBuilder:generateFirstColumnRow,
        rightSideItemBuilder:generateRightHandSideColumnRow
      ),
    );
  }
  Widget generateFirstColumnRow(BuildContext context,int index,) {
    return Container(
      child: Row(
        children: <Widget>[
          listButtonview(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder:(context)=>totalOverdueLoan()));
            },
            icon: const Icon(Icons.phone,size:16,color:whiteColor,),
          ),
          const SizedBox(width:5),
          listButtonview(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder:(context)=>totalOverdueLoan()));
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

