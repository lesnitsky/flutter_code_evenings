import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final Color color;
  final double width;
  final double height;

  const Square({Key key, this.color, this.width, this.height}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: this.width,
      height: this.height,
    );
  }
}
