import 'package:flutter/material.dart';
import 'package:layout/widgets/rectangle.dart';
import 'package:layout/widgets/square.dart';
import 'package:layout/widgets/layout_page.dart';

class TileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutPage(
      title: "Tile layout",
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Square(),
            Square(),
            Column(
              children: <Widget>[
                Rectangle(),
                Rectangle(),
              ],
            ),
            Square(),
            Square(),
            Square(),
            Column(
              children: <Widget>[
                Rectangle(),
                Rectangle(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
