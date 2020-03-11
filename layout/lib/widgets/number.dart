import 'package:flutter/material.dart';


class Number extends StatelessWidget {
  final String number;

  const Number({Key key, this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: number.toString(),
      onPressed: () {},
      child: Text(this.number),
    );
  }
}
