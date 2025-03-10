import 'dart:collection';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:groceryapp/presentation/screen/category/category_list/fruits.dart';
import 'package:groceryapp/presentation/screen/category/category_list/vegies.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
 final  ValueNotifier category=ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("Category"),),
      body:ValueListenableBuilder(valueListenable: category, builder: (context , index,_){
        return SingleChildScrollView( 
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Fruits(),
            Vegies(),
            
          ],

          ),
        );
      }) ,

    ),);
  }
}