import 'package:flutter/material.dart';

class LayoutPage extends StatelessWidget {
  final String title;
  final Widget child;

  const LayoutPage({Key key, this.title, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: child,
      ),
    );
  }
}
