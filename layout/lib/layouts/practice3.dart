import 'package:flutter/material.dart';
import 'package:layout/widgets/shape.dart';
import 'package:layout/widgets/layout_page.dart';

class Practice3 extends StatelessWidget {
  final color = Color.fromRGBO(245, 154, 193, 1);

  @override
  Widget build(BuildContext context) {
    var _circles = new List<Shape>.generate(10, (i) {
      return Shape(color: color, type: 'circle');
    });

    return LayoutPage(
      title: 'Num Keys layout',
      child: Expanded(
          child: GridView.builder(
            // How I can do GridView center?
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
            ),
            itemCount: _circles.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: _circles[index],
              );
            }
          )
      )
    );
  }
}
