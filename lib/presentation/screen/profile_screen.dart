import 'dart:math';

import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: Colors.white,
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [ Padding(
            padding: const EdgeInsets.all(1.0),
            child: Row(
              children: [SizedBox(height: 100,
                child: Container(
                width: 100,child: Card(child: Image.asset("assets/images/amazon-food-.jpg",fit: BoxFit.cover,),),
                ),
              
              ) , SizedBox(width: 20,)  ,Text("Firstname",
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.normal),)],
            ),
          ),SizedBox(height: 10,)
        
        ],),
      )
      
        
      ),
    );
  }
}