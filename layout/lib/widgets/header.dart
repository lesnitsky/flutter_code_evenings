import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final double _height = 80;

  _calculateHeight(double value) {
    return value / 2;
  }

  _calculateWidth(double value) {
    return value / 2; 
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this._height,
      decoration: BoxDecoration(
        color: Colors.red,
      ),
      child: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 9),
            width: this._calculateWidth(this._height),
            height: this._calculateHeight(this._height),
            decoration: BoxDecoration(
              color: Colors.purple,
              shape: BoxShape.rectangle,
            ),
          )
        ],
      ),
    );
  }
}