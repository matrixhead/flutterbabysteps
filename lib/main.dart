import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kindagitit/category.dart';
import 'CategoryRoute.dart';

const _categoryName = 'Cake';
const _categoryIcon = Icons.cake;
const _categoryColor =Colors.green;

void main(){
  runApp(unitConverterApp());
}

class unitConverterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'unitConverter',
      home: CategoryRoute(),
      );
  }  
}
