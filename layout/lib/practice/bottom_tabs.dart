import 'package:flutter/material.dart';

class BottomTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Container(
          height: 70,
          child: Stack(
            textDirection: TextDirection.ltr,
            children: <Widget>[
              Container(
                color: Colors.purple[200],
              ),
              Container(
                height: 40,
                width: 40,
                color: Colors.white,
                margin: EdgeInsets.all(15),
              )
            ],
          ),
        ),
        Flexible(
            child: Container(
          color: Colors.white,
          constraints: BoxConstraints.expand(),
        )),
        Container(
          height: 70,
          child: Row(
            textDirection: TextDirection.ltr,
            children: <Widget>[
              FlexContainerHelper(color: Colors.yellow[300]),
              FlexContainerHelper(color: Colors.deepOrange[200]),
              FlexContainerHelper(color: Colors.blue[300]),
              FlexContainerHelper(color: Colors.pink[200]),
            ],
          ),
        )
      ]),
    );
  }
}

class FlexContainerHelper extends StatelessWidget {
  @override
  final Color color;
  const FlexContainerHelper({this.color}) : super();
  Widget build(BuildContext context) {
    return Flexible(
        child: Container(
            decoration: BoxDecoration(
                color: color,
                border: Border.all(color: Colors.black, width: 0.5))));
  }
}
