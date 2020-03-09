import 'package:flutter/material.dart';
import 'package:layout/widgets/shape.dart';
import 'package:layout/widgets/layout_page.dart';

class Practice2 extends StatelessWidget {
  final color = Color.fromRGBO(136, 130, 189, 1);

  @override
  Widget build(BuildContext context) {
    return LayoutPage(
        title: 'Floating action button layout',
        child: Column(children: <Widget>[
          Container(height: 50, color: color),
          Flexible(
            flex: 1,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: <Widget>[
                Container(
                  color: Colors.white,
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Shape(
                    color: color,
                    width: 60.0,
                    height: 60.0,
                    type: 'circle',
                  ),
                )
              ],
            ),
          ),
        ]
      )
    );
  }
}
