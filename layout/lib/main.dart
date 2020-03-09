import 'package:flutter/material.dart';
import 'package:layout/layouts/flex.dart';
import 'package:layout/layouts/practice2.dart';
import 'package:layout/layouts/practice3.dart';
import 'package:layout/layouts/practice4.dart';

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
          title: Text('Flex Layout'),
          onTap: () {
            _open(context, FlexLayout());
          },
        ),
        ListTile(
          title: Text('Floating action button layout'),
          onTap: () {
            _open(context, Practice2());
          },
        ),
        ListTile(
          title: Text('Num Keys layout'),
          onTap: () {
            _open(context, Practice3());
          },
        ),
        ListTile(
          title: Text('Pill layout'),
          onTap: () {
            _open(context, Practice4());
          },
        ),
      ],
    );
  }
}
