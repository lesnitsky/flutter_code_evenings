import 'package:flutter/material.dart';
import 'package:layout/widgets/layout_page.dart';
import 'package:layout/widgets/circle.dart';
import 'package:layout/widgets/square.dart';

class PillLayout extends StatelessWidget {
  final double innerWidgetsHeight = 40;

  @override
  Widget build(BuildContext context) {
    return LayoutPage(
      title: "Pill Layout",
      child: Align(
        child: Container(
          width: 240,
          height: this.innerWidgetsHeight + 30,
          decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(color: Colors.black, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Circle(),
              Square(
                width: 100,
                height: this.innerWidgetsHeight,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
