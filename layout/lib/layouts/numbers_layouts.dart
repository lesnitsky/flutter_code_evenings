import 'package:flutter/material.dart';
import 'package:layout/widgets/layout_page.dart';
import 'package:layout/widgets/number.dart';

class NumberLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final numbers = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9],
      [0],
    ];

    return LayoutPage(
      title: 'Number\'s Layout',
      child: Column(children: <Widget>[
        ...numbers
            .map((row) => Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 8.0,
                ),
                child: Row(
                  children: <Widget>[
                    ...row
                        .map(
                          (number) => Expanded(
                            child: Number(number: number.toString())
                          ),
                        )
                        .toList(),
                  ],
                ),
              ))
            .toList(),
      ]),
    );
  }
}
