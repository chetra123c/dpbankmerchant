// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_typing_uninitialized_variables

import 'package:dpbankmerchant/Collection/CollectionInfo/CoreList/CoreList.dart';
import 'package:dpbankmerchant/Collection/Radio/Form.dart';
import 'package:dpbankmerchant/Collection/ThemeCollection/color.dart';
import 'package:dpbankmerchant/Collection/ThemeCollection/style.dart';
import 'package:dpbankmerchant/Collection/ThemeCollection/variable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RadioFunction extends StatefulWidget {
  final String title = "Radio Widget Demo";

  const RadioFunction({super.key});
  @override
  RadioFunctionState createState() => RadioFunctionState();
}
class RadioFunctionState extends State<RadioFunction> {
  int ? selectedRadio;
  int ? selectedRadioTile;
  var date;
  var maxLines = 5;
  int conditioncall=0;
  int conditionview=0;
  final double  _height = 35.0;
  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
    selectedRadioTile = 0;
  }
  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }
  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }
  String ? selectedSalutation;
  String ? name;
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController dropDown = TextEditingController();
  TextEditingController dropDown1 = TextEditingController();
  TextEditingController remake = TextEditingController();
  TextEditingController remake2 = TextEditingController();
  static DateTime startDate = DateTime.now();
  final List<String> list = ['Developer', 'Designer', 'Consultant', 'Student'];
  @override
  Widget build(BuildContext context) {
    return  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height:20),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 15.0),
            child: SizedBox(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Collection Followup',style: styleLoanTotal),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
         Padding(
           padding: const EdgeInsets.only(left: 15.0),
           child: Container(
             child: Row(
               children: [
                 listButtonview(
                   onPressed: (){
                     setState(() {

                     });
                   },
                   icon: const Icon(Icons.phone,size:16,color:whiteColor,),
                 ),
                 const SizedBox(width:5),
                 listButtonview(
                   onPressed: (){},
                   icon:const Icon(Icons.remove_red_eye,size:16,color:whiteColor,),
                 ),
               ],
             ),
           ),
         ),
          SizedBox(height: 15,),
          LayoutBuilder(
            builder: (context,conStraints){
              if(conditioncall + conditionview == 1){
                return Container(
                  child:Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                        child: Container(
                          decoration:decorationStyle,
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height:_height,
                                      child: RadioMenuButton(
                                          value:1,
                                          groupValue:selectedRadioTile,
                                          onChanged:(val){
                                            print('$Collected $val');
                                            setSelectedRadioTile(val!);
                                          },
                                          child:Text(Collected)
                                      ),
                                    ),
                                    SizedBox(
                                      height:_height,
                                      child: RadioMenuButton(
                                          value:2,
                                          groupValue:selectedRadioTile,
                                          onChanged:(val){
                                            print('$UnCollected $val');
                                            setSelectedRadioTile(val!);
                                          },
                                          child:Text(UnCollected)
                                      ),
                                    ),
                                    SizedBox(
                                      height:_height,
                                      child: RadioMenuButton(
                                        value:3,
                                        groupValue:selectedRadioTile,
                                        onChanged:(val){
                                          print('$Unreached $val');
                                          setSelectedRadioTile(val!);
                                        },
                                        child:Text(Unreached),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height:_height,
                                      child: RadioMenuButton(
                                          value:4,
                                          groupValue:selectedRadioTile,
                                          onChanged:(val){
                                            print('$Promise $val');
                                            setSelectedRadioTile(val!);
                                          },
                                          child:Text(Promise)
                                      ),
                                    ),
                                    SizedBox(
                                      height:_height,
                                      child: RadioMenuButton(
                                        value:5,
                                        groupValue:selectedRadioTile,
                                        onChanged:(val){
                                          print('$Respond $val');
                                          setSelectedRadioTile(val!);
                                        },
                                        child:Text(Unreached),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left:15.0,right:15.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  child:dropDownList(
                                    controller:dropDown,
                                    items:list,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left:10.0,),
                                  child: Container(
                                    height: 48,
                                    decoration:decorationStyle,
                                    child: RawMaterialButton(
                                        elevation: 0,
                                        fillColor:Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(5)
                                        ),
                                        onPressed:()async{
                                          DateTime? pickedDate = await showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime(1950),
                                              lastDate: DateTime(2100));
                                          if (pickedDate != null) {
                                            print(pickedDate);
                                            String formattedDate = DateFormat('dd-MMM-yyyy').format(pickedDate);
                                            print(formattedDate);
                                            setState(() {
                                              date  = formattedDate;
                                            });
                                          } else {}
                                        },
                                        child:Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Expanded(
                                                child: Container(
                                                  child: Row(
                                                    children: [
                                                      date !=null ? Text('$date',style: TextStyle(fontSize:16,)):Text('dd-mm-yyyy',style: TextStyle(fontSize:16,color: Colors.grey)),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child:Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 10.0),
                                                    child: Icon(CupertinoIcons.calendar_today,size: 25,),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  child:dropDownList(
                                    controller:dropDown1,
                                    items:list,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left:10.0,),
                                  child: Container(
                                    height: 48,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: formCollection(
                                      maxLines: 1,
                                      color:whiteColor,
                                      controller:remake2,
                                      hintText: 'phone number',
                                      validator: (String ? value) {
                                        return null;
                                      },
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                        child: Container(
                          child:Column(
                            children: [
                              formCollection(
                                maxLines: 1,
                                color:whiteColor,
                                controller:phoneNumber,
                                hintText: 'phone number',
                                validator: (String? value) {
                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                        child: Container(
                          child:Column(
                            children: [
                              formCollection(
                                maxLines: 3,
                                color:whiteColor,
                                controller:remake,
                                hintText: 'Remark Activity',
                                validator: (String? value){
                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0,right: 15.0,top:15.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 25,
                                child: RawMaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  fillColor:painColor,
                                  onPressed:(){},
                                  child:Text('save',style:saveStyle),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }else{
                return Container();
              }
            })
        ],
    );
  }
}
