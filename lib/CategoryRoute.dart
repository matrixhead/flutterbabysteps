import 'package:flutter/material.dart';
import 'category.dart';
import 'Unit.dart';

final _backgroundColor = Colors.green[100];

class CategoryRoute extends StatelessWidget{

  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];
  
  Widget _buildCategorywidgets(List<Widget> categories){
    return ListView.builder(
      itemBuilder:(BuildContext context, int index) =>categories[index],
      itemCount: categories.length,
       );
  }
  List<Unit> _retrieveUnitLIst(String categoryName){
    return List.generate(10,(int i){
      i +=1;
      return Unit(
        name: '$categoryName Unit $i',
        conversion: i.toDouble(),
      );
    });
  }

  @override
  Widget build (BuildContext context){
    final categories = <category>[];

    for (var i=0; i < _categoryNames.length; i++){
      categories.add(category(
        name: _categoryNames[i],
        color: _baseColors[i],
        iconlocation: Icons.cake,
        units: _retrieveUnitLIst(_categoryNames[i]),
      ));
    }
    final ListView = Container(
      color: _backgroundColor,
      padding: EdgeInsets.symmetric(horizontal:8.0),
      child: _buildCategorywidgets(categories),
    );

    final appBar = AppBar(
      elevation:0.0,
      title:Text(
        'unit Converter',
        style: TextStyle(
          color: Colors.black,
          fontSize: 30.0,
        ),
      ),
      centerTitle:true,
      backgroundColor: _backgroundColor,
    );
    return  Scaffold(
      appBar: appBar,
      body: ListView,
    );
  }

}