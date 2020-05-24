import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';
import 'package:stitchwallert/widgets/dot.dart';

class DrawerTile extends StatelessWidget {
  final String name;
  final String route;
  const DrawerTile({
    Key key,
    this.name,
    this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => Navigator.popAndPushNamed(context, route),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: appBlackColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: size.width / 8,
              child: Center(
                child: Dot(
                  color: appRedColor,
                ),
              ),
            ),
            Container(
              width: (size.width / 2) + 20,
              child: Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 18,
                    color: appRedColor,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
