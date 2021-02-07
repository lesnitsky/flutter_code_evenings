import 'package:flutter/material.dart';
import 'package:layout/layouts/button_tabs.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Layouts'),
        ),
        body: AppContent(),
      ),
    );
  }
}

class AppContent extends StatelessWidget {
  _open(BuildContext context, Widget child) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => child));
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('Button Tabs Layout'),
          onTap: () {
            _open(context, ButtonTabsLayout(title: 'Button Tabs Layout',));
          },
        )
      ],
    );
  }
}
