import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:kindagitit/Unit.dart';

class ConverterRoute extends StatelessWidget{
  final Color color;
  final List<Unit> units;

  const ConverterRoute({
    @required this.color,
    @required this.units,
  }):assert(units != null),
     assert(color != null);

  @override
  Widget build(BuildContext context){
    final unitWidgets = units.map((Unit unit){
      return Container(
        color: color,
        margin: EdgeInsets.all(8.0),
        padding:EdgeInsets.all(16.0),
        child: Column(
          children:<Widget>[
            Text(
              unit.name,
              style:Theme.of(context).textTheme.headline,
            ),
            Text(
              'conversion : ${unit.conversion}',
              style:Theme.of(context).textTheme.subhead,
            ),
          ],
        ),
      );
    }).toList();

    return ListView(
      children: unitWidgets,
    );
  }
}