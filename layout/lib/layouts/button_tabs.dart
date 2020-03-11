import 'package:flutter/material.dart';
import 'package:layout/widgets/header.dart';
import 'package:layout/widgets/footer.dart';

class ButtonTabsLayout extends StatelessWidget {
  final String title;

  const ButtonTabsLayout({Key key, this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Header(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
