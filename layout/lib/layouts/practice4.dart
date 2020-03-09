import 'package:flutter/material.dart';
import 'package:layout/widgets/circle.dart';
import 'package:layout/widgets/layout_page.dart';
import 'package:layout/widgets/rectangle.dart';

class Practice4 extends StatelessWidget {
  final color = Color.fromRGBO(110, 208, 246, 1);

  @override
  Widget build(BuildContext context) {
    return LayoutPage(
      title: 'Pill layout',
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                Stack(
                  alignment: Alignment.centerLeft,
                  children: <Widget>[
                    Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(50.0)
                      )
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Circle(color: Colors.white, radius: 40),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            padding: EdgeInsets.only(right: 30, left: 10),
                            child: Rectangle(
                              color: Colors.white,
                              height: 40,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
