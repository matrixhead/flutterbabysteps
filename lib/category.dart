import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight/2);

class category  extends StatelessWidget{
  final String name;
  final ColorSwatch color;
  final IconData iconlocation;
  const category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconlocation,
  }) : assert(name!=null),
        assert(color != null),
        assert(iconlocation!=null),
        super(key:key);
        
  @override
  Widget build(BuildContext context){
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: color,
          splashColor: color,
          onTap: () => print("i was tapped"),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(padding:EdgeInsets.all(16.0),
                child: Icon(
                iconlocation,
                size:60.0,
                ),
                ),
                Center(
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline,
                  ),
                  )
              ],
            )
          )
        ),
      )
    );
  }
}