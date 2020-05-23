import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          Container(
            height: size.height / 2,
            color: appRedColor,
          )
        ],
      ),
    );
  }
}
