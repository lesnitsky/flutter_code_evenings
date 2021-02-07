import 'package:flutter/material.dart';

class Rectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      width: 200,
      height: 75,
      decoration: BoxDecoration(color: Colors.red),
    );
  }
}
