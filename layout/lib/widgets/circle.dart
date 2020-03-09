import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  final Color color;
  final double radius;

  const Circle({Key key, this.color, this.radius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black, width: 0.5)),
    );
  }
}
