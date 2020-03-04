import 'package:flutter/material.dart';
import 'package:layout/widgets/layout_page.dart';
import 'package:layout/widgets/square.dart';

import 'package:layout/responsive/mq_extension.dart';

class FlexLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    return LayoutPage(
      title: 'Flex Layout',
      child: Flex(
        direction: mq.isTablet() ? Axis.horizontal : Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Square(color: Colors.red),
          Square(color: Colors.green),
          Square(color: Colors.blue),
        ],
      ),
    );
  }
}
