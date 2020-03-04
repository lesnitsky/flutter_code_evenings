import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final Color color;

  const Square({Key key, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 50,
      height: 50,
    );
  }
}
