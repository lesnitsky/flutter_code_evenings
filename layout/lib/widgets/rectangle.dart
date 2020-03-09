import 'package:flutter/material.dart';

class Rectangle extends StatelessWidget {
  final Color color;
  final double width;
  final double height;

  const Rectangle({Key key, this.color, this.width, this.height})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color,
          shape: BoxShape.rectangle,
          border: Border.all(color: Colors.black, width: 0.5)),
      width: width,
      height: height,
    );
  }
}
