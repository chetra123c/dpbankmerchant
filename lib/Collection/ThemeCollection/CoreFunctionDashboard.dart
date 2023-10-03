// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers
import 'package:dpbankmerchant/Collection/ThemeCollection/color.dart';
import 'package:flutter/material.dart';
Widget buttonDashboard({
  required BuildContext context,
  required icon,
  required VoidCallback onPressed,
  required Color color,
  required Color colorBarStyle,
  required Color splashColor,
  required Text textTitle,
  required Text numberView,
})
{
  Size size = MediaQuery.of(context).size;
  return Container(
    width: size.width*0.2,
    height: size.height*0.09,
    child: RawMaterialButton(
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5)
      ),
      fillColor: color,
     elevation: 1,
     splashColor: splashColor,
      onPressed:onPressed,
      child: Row(
        children: [
          Container(
            width: size.width*0.015,
            decoration: BoxDecoration(
              color: colorBarStyle,
             borderRadius: BorderRadius.only(
               topLeft:Radius.circular(4),
               bottomLeft:Radius.circular(4)
             )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:5.0),
            child: Container(
              width: size.width*0.12,
              height: size.height*0.06,
              decoration: BoxDecoration(
                color:blurColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child:icon,
            ),
          ),
          SizedBox(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left:size.width *0.02,top:size.height*0.015),
                  child: Container(
                    width: size.width *0.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        textTitle,
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left:size.width *0.01,top:size.height*0.01),
                  child: Container(
                    child: Row(
                      children: [
                        numberView
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}