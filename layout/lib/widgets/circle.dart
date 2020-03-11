import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
    );
  }
}
