// ignore_for_file: sort_child_properties_last

import 'package:dpbankmerchant/Collection/CollectionInfo/CollectionDatail/Collectiondetail.dart';
import 'package:dpbankmerchant/Collection/CollectionInfo/CoreList/CoreList.dart';
import 'package:dpbankmerchant/Collection/ThemeCollection/color.dart';
import 'package:dpbankmerchant/Collection/ThemeCollection/style.dart';
import 'package:flutter/material.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';

Widget getBodyWidget({
  required BuildContext context,
  required int itemCount,
  IndexedWidgetBuilder ? leftSideItemBuilder,
  IndexedWidgetBuilder ? rightSideItemBuilder,
}) {
  return Padding(
    padding: const EdgeInsets.only(right:5.0),
    child: SizedBox(
      child: HorizontalDataTable(
        leftHandSideColumnWidth:120,
        rightHandSideColumnWidth:1600,
        isFixedHeader: true,
        headerWidgets: _getTitleWidget(),
        leftSideItemBuilder: leftSideItemBuilder,
        rightSideItemBuilder: rightSideItemBuilder,
        itemCount: itemCount,
        rowSeparatorWidget: const Divider(
          color: Colors.grey,
          height:0.5,
          thickness: 0.0,
        ),
      ),
      height: MediaQuery.of(context).size.height,
    ),
  );
}
List<Widget> _getTitleWidget() {
  return [
    _getTitleItemWidget('Name', width!),
    _getTitleItemWidget('Cust Name',width!),
    _getTitleItemWidget('Arrears', width!),
    _getTitleItemWidget('Pp-Due', width!),
    _getTitleItemWidget('Int-Due', width!),
    _getTitleItemWidget('Total Due', width!),
    _getTitleItemWidget('Penalty', width!),
    _getTitleItemWidget('Outstanding', width!),
    _getTitleItemWidget('Phone', width!),
    _getTitleItemWidget('Product', width!),
    _getTitleItemWidget('LD Act', width!),
    _getTitleItemWidget('Settlements', width!),
    _getTitleItemWidget('LO/AO Name', width!),
  ];
}
Widget _getTitleItemWidget(String label, double width) {
  return Container(
    child: Text(label, style:const TextStyle(fontWeight: FontWeight.bold)),
    width: width,
    height: 56,
    padding:const EdgeInsets.fromLTRB(5, 0, 0, 0),
    alignment: Alignment.centerLeft,
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