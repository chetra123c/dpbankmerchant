import 'package:dpbankmerchant/Theme/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget appDrawer(){
 return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const UserAccountsDrawerHeader(
          decoration: BoxDecoration(color: colordrawer),
          currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1485290334039-a3c69043e517?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTYyOTU3NDE0MQ&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=300')
          ),
          accountEmail: Text('jane.doe@example.com'),
          accountName: Text('Jane Doe', style: TextStyle(fontSize: 24.0)),

        ),
        ListTile(
          leading: const Icon(Icons.key_outlined,size:25,color: coloricons,),
          title: const Text('Change password', style: TextStyle(fontSize: 14.0)),
          onTap:(){},
        ),
        ListTile(
          leading: const Icon(CupertinoIcons.lock_fill,color:coloricons,size: 25,),
          title: const Text('Passcode Lock', style: TextStyle(fontSize: 14.0)),
          onTap:(){},
        ),
        ListTile(
          leading: const Icon(Icons.logout,color:coloricons,size: 25,),
          title: const Text('Log Out', style: TextStyle(fontSize: 14.0)),
          onTap:(){},
        ),
      ],
    ),
  );
}