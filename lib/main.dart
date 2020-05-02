import 'package:flutter/material.dart';
import 'CategoryRoute.dart';

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
