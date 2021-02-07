import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = [
      Colors.pink,
      Colors.green,
      Colors.blue,
      Colors.yellow,
    ];

    return Container(
      height: 100,
      child: Row(
        children: <Widget>[
          for (var c in colors) Expanded(
            child: Container(
              decoration: BoxDecoration(color: c),
            ),
          ), 
        ],
      ),
    );
  }
}