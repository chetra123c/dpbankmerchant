// ignore_for_file: camel_case_types, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, use_build_context_synchronously

import 'dart:convert';

import 'package:dpbankmerchant/Api/Api.dart';
import 'package:dpbankmerchant/Layout/MainScreen/Home/homepage.dart';
import 'package:dpbankmerchant/Layout/Splash_Screen/Core/Widget/Form/Formlogin.dart';
import 'package:dpbankmerchant/Theme/Colors.dart';
import 'package:dpbankmerchant/Theme/font.dart';
import 'package:dpbankmerchant/validator/validation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dpbankmerchant/Api/globals.dart' as globals;
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'dart:async';

class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  final TextEditingController usernamelog  =TextEditingController();
  final TextEditingController passwordlog  =TextEditingController();
  final TextEditingController username  =TextEditingController();
  final TextEditingController password  =TextEditingController();
  final TextEditingController newpassword  =TextEditingController();
  int value =0;
  @override
  void initState() {
    super.initState();
    setState(() {
    });
  }
  final _formkey = GlobalKey<FormState>();
  String url =Api.createuser;
  Future requestUser() async{
    globals.usernameRe = username.text;
    globals.passwordRe = password.text;
    globals.newpasswordRe = newpassword.text;
    final res = await http.post(Uri.parse(url),body: {
      'sigonname':globals.usernameRe.toString(),
      'password':globals.passwordRe.toString(),
      'curpassword':globals.newpasswordRe.toString(),
    });
    if(res.statusCode ==200){
      final data= jsonDecode(res.body);
      if(data['msg1'] =='success'){
        String alert = data['msg'];
        showDialog(context: context, builder:(BuildContext context){
          Future.delayed( Duration(seconds:2), () {
            setState(() {
              Navigator.of(context).pop();
            });
            QuickAlert.show(
                context: context,
                type: QuickAlertType.success,
                text:alert,
                onConfirmBtnTap:(){
                  Navigator.of(context).pop();
                  setState(() {
                    value = 0;
                  });
                }
            );
          });
          return AlertDialog(
            insetPadding: EdgeInsets.only(left: 160,right:160),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            content:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  color:progress,
                )
              ],
            ),
          );
        });
      }else if(data['msg1'] =='not match'){
        String alert1 = data['msg'];
        showDialog(context: context, builder:(BuildContext context){
          Future.delayed( Duration(seconds:2), () {
            setState(() {
              Navigator.of(context).pop();
            });
            QuickAlert.show(
                context: context,
                type: QuickAlertType.warning,
                text:alert1,
                onConfirmBtnTap:(){
                  setState(() {
                    Navigator.of(context).pop();
                  });
                }
            );
          });
          return AlertDialog(
            insetPadding: EdgeInsets.only(left: 160,right:160),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            content:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  color:progress,
                )
              ],
            ),
          );
        });
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LayoutBuilder(builder:(context,constraints) {
      if(value ==0){
      return Form(
        key: _formkey,
        child: Scaffold(
            body:Container(
              height: double.maxFinite,
              decoration: BoxDecoration(
                gradient:backgroud,
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding:  EdgeInsets.only(top: size.height * 0.1),
                  child: Column(
                    children: [
                      Icon(Icons.apple,size:90,),
                      Padding(
                        padding:  EdgeInsets.only(top: size.height * 0.02),
                        child: Text(Login,style:TextLoginstyle,),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15,top: 30.0),
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Column(
                                  children:<Widget>[
                                    Formlogin(
                                      validator: Validator.nameValidate,
                                      controller:usernamelog,
                                      hinText: 'user name',
                                      prefixIcon:Icon(Icons.person),
                                    ),
                                    Formlogin(
                                      controller:passwordlog,
                                      validator:Validator.validatePassword,
                                      hinText: 'password',
                                      prefixIcon:Icon(Icons.key_sharp),
                                    ),
                                  ],
                                ),
                              ),
                             SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                                child: Container(
                                  width:MediaQuery.of(context).size.width,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: RawMaterialButton(
                                    fillColor: colorsbutton,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:BorderRadius.circular(10.0)
                                    ),
                                    onPressed: (){
                                      if(_formkey.currentState!.validate()){
                                        setState(() {
                                          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder:(context)=>SecondScreen()), (route) => false);
                                        });
                                      }
                                    },
                                    child: Text(Login,style: TextLoginlabel,),
                                  ),
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                              Container(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:25.0),
                                      child: Container(
                                        height:0.7,
                                        color:Colors.grey[200],
                                        width: MediaQuery.of(context).size.width*0.37,
                                      ),
                                    ),
                                    Text(' ',style:TextStyle(fontSize:14),),
                                    Text('Or',style:TextStyle(fontSize:14,color: Colors.white),),
                                    Text(' ',style:TextStyle(fontSize:14),),
                                    Padding(
                                      padding: const EdgeInsets.only(right:.0),
                                      child: Container(
                                        height:0.7,
                                        color:Colors.grey[200],
                                        width: MediaQuery.of(context).size.width*0.39,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(QA,style:Texttsty,),
                                    Container(
                                      child: RawMaterialButton(
                                        onPressed: (){
                                          setState(() {
                                            value = 1;
                                          });
                                        },
                                        child: Text(Signup1,style: Texttstylelabel,),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
        ),
      );
      }else{
       return Form(
          key: _formkey,
          child: Scaffold(
              body:Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                  gradient:backgroud,
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding:  EdgeInsets.only(top: size.height * 0.1),
                    child: Column(
                      children: [
                        Icon(Icons.apple,size:90,),
                        Padding(
                          padding:  EdgeInsets.only(top: size.height * 0.02),
                          child: Text(Login,style: TextLoginstyle,),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15,right: 15,top: 30.0),
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Column(
                                    children:<Widget>[
                                      Formlogin(
                                        validator:Validator.nameValidate,
                                        controller:username,
                                        hinText: 'user name',
                                        prefixIcon:Icon(Icons.person),
                                      ),
                                      Formlogin(
                                        controller:password,
                                        validator: Validator.validatePassword,
                                        hinText: 'new password',
                                        prefixIcon:Icon(Icons.key_sharp),
                                      ),
                                      Formlogin(
                                        controller:newpassword,
                                        validator:Validator.validatePassword,
                                        hinText: 'current password ',
                                        prefixIcon:Icon(Icons.key_sharp),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                                  child: Container(
                                    width:MediaQuery.of(context).size.width,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: RawMaterialButton(
                                      fillColor: colorsbutton,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:BorderRadius.circular(10.0)
                                      ),
                                      onPressed: (){
                                        setState(() {
                                          if(_formkey.currentState!.validate()){
                                            setState(() {
                                              requestUser();
                                              print('2'+newpassword.toString());
                                              print('1'+password.toString());
                                              print('0' +username.toString());
                                            });
                                          }
                                        });
                                      },
                                      child: Text(Signup,style: TextLoginlabel,),
                                    ),
                                  ),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                Container(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left:25.0),
                                        child: Container(
                                          height:0.7,
                                          color:Colors.grey[200],
                                          width: MediaQuery.of(context).size.width*0.37,

                                        ),
                                      ),
                                      Text('  Or  ',style:TextStyle(fontSize:14,color: Colors.white),),

                                      Padding(
                                        padding: const EdgeInsets.only(right:.0),
                                        child: Container(
                                          height:0.7,
                                          color:Colors.grey[200],
                                          width: MediaQuery.of(context).size.width*0.39,

                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(AS,style:Texttsty,),
                                      Container(
                                        child: RawMaterialButton(
                                          onPressed: (){
                                            setState(() {
                                              value = 0;
                                            });
                                          },
                                          child: Text(Login,style: Texttstylelabel,),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
          ),
        );
      }
    });
  }
}
