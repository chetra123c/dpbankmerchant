// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors, avoid_unnecessary_containers, library_prefixes

import 'package:dpbankmerchant/Collection/CollectionInfo/COLIST/CollectedList.dart';
import 'package:dpbankmerchant/Collection/CollectionInfo/COLIST/NewUpdateList.dart';
import 'package:dpbankmerchant/Collection/CollectionInfo/COLIST/NoResponList.dart';
import 'package:dpbankmerchant/Collection/CollectionInfo/COLIST/PromisedLIst.dart';
import 'package:dpbankmerchant/Collection/CollectionInfo/COLIST/TotalListCollect.dart';
import 'package:dpbankmerchant/Collection/CollectionInfo/COLIST/UnReachedList.dart';
import 'package:dpbankmerchant/Collection/CollectionInfo/COLIST/UncollectedList.dart';
import 'package:dpbankmerchant/Collection/CollectionInfo/CoreList/CoreList.dart';
import 'package:dpbankmerchant/Collection/ThemeCollection/color.dart';
import 'package:dpbankmerchant/Collection/ThemeCollection/CoreFunctionDashboard.dart';
import 'package:dpbankmerchant/Collection/ThemeCollection/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:dpbankmerchant/Collection/ThemeCollection/variable.dart' as Loan;

class dashboardCollect extends StatefulWidget {
  const dashboardCollect({super.key});

  @override
  State<dashboardCollect> createState() => _dashboardCollectState();
}

class _dashboardCollectState extends State<dashboardCollect> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight:70,
        elevation: 0,
        backgroundColor:colorOpacity,
        leading: RawMaterialButton(
          shape: CircleBorder(),
          onPressed: (){Navigator.of(context).pop();},
          child: Icon(CupertinoIcons.arrow_left,size:30,color:blackColor,),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: size.width*0.03),
            child:SizedBox(
              width: 50,
              child: RawMaterialButton(
                  elevation:0,
                  fillColor:blurColor,
                  shape: CircleBorder(),
                  onPressed: (){},
                  child: Icon(Iconsax.notification,color:blackColor,size: 25,)),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children:<Widget> [
            Padding(
              padding: EdgeInsets.only(left:size.width *0.04),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.start,
                children: [
                  Text('Loan Collection',style:textStyle,),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left:size.width *0.04,top:5),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.start,
                children: [
                  Text('Dashboard',style:sizeStyle,),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left:size.width*0.04,
                  right: size.width*0.045,
                  top:size.height*0.03
              ),
              child: Container(
                width: size.width,
                height: size.height*0.17,
                decoration: BoxDecoration(
                 color:painColor,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 0.5,
                      spreadRadius: 1,
                      offset: Offset(0,1)
                    )
                  ]
                ),
                child:Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top:size.height*0.016),
                      child: Text("${Loan.totalLoanOverdue}",style:numberStyle),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:size.height*0.01),
                      child: Text('Total Loan Overdue',style:textButtonTotal),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height*0.03),
                      child: SizedBox(
                        width: size.width*0.48,
                        height: size.height*0.040,
                        child:RawMaterialButton(
                          fillColor:Colors.cyan,
                          elevation:5,
                          splashColor: painColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder:(context)=>totalListCollect()));
                          },
                          child:SizedBox(
                            child: Text('details',style: sizeStyle,),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left:size.width*0.04,
                  right: size.width*0.045,
                  top:size.height*0.02
              ),
              child: Row(
                children: [
                  Expanded(
                    flex:1,
                    child: buttonDashboard(
                      colorBarStyle: blueColor,
                      splashColor:blueColor ,
                      color:whiteColor,
                      context: context,
                      numberView:Text('New Update',style:buttonTextStyle,),
                      textTitle:Text('${Loan.totalLoanOverdue}',style:numberStyleButton),
                      icon:Icon(Iconsax.message_edit,size:30,color:painColor),
                      onPressed:(){
                        Navigator.of(context).push(MaterialPageRoute(builder:(context)=>newUpdate()));
                      },
                    ),
                  ),
                  SizedBox(width:10),
                  Expanded(
                    flex:1,
                    child: buttonDashboard(
                      splashColor: orangColor,
                      colorBarStyle: orangColor,
                      color:whiteColor,
                      context: context,
                      numberView:Text('No Respond',style:buttonTextStyle),
                      textTitle :Text('${Loan.totalLoanOverdue}',style:numberStyleButton,),
                      icon:Icon(Iconsax.call_slash,size:30,color:painColor),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder:(context)=>RespondList()));
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left:size.width*0.04,
                  right: size.width*0.045,
                  top:size.height*0.02
              ),
              child: Row(
                children: [
                  Expanded(
                    flex:1,
                    child: buttonDashboard(
                      splashColor:radColor,
                      colorBarStyle:radColor,
                      color:whiteColor,
                      context: context,
                      numberView :Text('Unreached',style:buttonTextStyle),
                      textTitle:Text('${Loan.totalLoanOverdue}',style:numberStyleButton,),
                      icon:Icon(CupertinoIcons.location_slash ,size:30,color:painColor),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder:(context)=>unreachedList()));
                      },
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    flex:1,
                    child: buttonDashboard(
                      splashColor: cupleColor,
                      colorBarStyle: cupleColor,
                      color:whiteColor,
                      context: context,
                      numberView :Text('Uncollected',style:buttonTextStyle),
                      textTitle :Text('${Loan.totalLoanOverdue}',style:numberStyleButton,),
                      icon:Icon(Iconsax.money_recive,size:30,color:painColor),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder:(context)=>uncollectedList()));
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left:size.width*0.04,
                  right: size.width*0.045,
                  top:size.height*0.02
              ),
              child: Row(
                children: [
                  Expanded(
                    flex:1,
                    child: buttonDashboard(
                      splashColor: browColor,
                      colorBarStyle: browColor,
                      color:whiteColor,
                      context: context,
                      numberView:Text('Promised',style:buttonTextStyle),
                      textTitle:Text('${Loan.totalLoanOverdue}',style:numberStyleButton,),
                      icon:Icon(Iconsax.calendar,size:30,color:painColor),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder:(context)=>promisedList()));
                      },
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    flex:1,
                    child: buttonDashboard(
                      splashColor: greenColor,
                      colorBarStyle: greenColor,
                      color:whiteColor,
                      context: context,
                      numberView :Text('Collected',style:buttonTextStyle),
                      textTitle :Text('${Loan.totalLoanOverdue}',style:numberStyleButton,),
                      icon:Icon(Iconsax.money_recive,size:32,color:painColor),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder:(context)=>collectedList()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
