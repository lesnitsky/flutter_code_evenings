import 'package:flutter/material.dart';

class Shape extends StatelessWidget {
  final Color color;
  final String type;
  final double width;
  final double height;

  const Shape({Key key, this.color, this.type, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color,
          shape: type == 'circle' ? BoxShape.circle : BoxShape.rectangle,
          border: Border.all(color: Colors.black, width: 0.5)),
    );
  }
}
