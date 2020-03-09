import 'package:flutter/material.dart';
import 'package:layout/widgets/circle.dart';
import 'package:layout/widgets/layout_page.dart';

class Practice3 extends StatelessWidget {
  final color = Color.fromRGBO(245, 154, 193, 1);

  @override
  Widget build(BuildContext context) {
    var _circles = new List<Circle>.generate(10, (i) {
      return Circle(color: color);
    });

    return LayoutPage(
      title: 'Num Keys layout',
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Expanded(
          child: GridView.builder(
            // How I can do GridView center?
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
            ),
            itemCount: _circles.length,
            itemBuilder: (context, index) {
              return _circles[index];
            }
          )
        ),
      ),
    );
  }
}
