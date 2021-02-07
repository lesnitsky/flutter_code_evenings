import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final Color color;

  const Square({Key key, this.color}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      width: 150, 
      height: 154, // Plus 4 => 2 * 2(vertical unit)
      decoration: BoxDecoration(color: Colors.red),
    );
  }
}
