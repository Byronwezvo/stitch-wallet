import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';

class WaitingWidget extends StatefulWidget {
  @override
  _WaitingWidgetState createState() => _WaitingWidgetState();
}

class _WaitingWidgetState extends State<WaitingWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColorBlack,
      body: Container(
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}
