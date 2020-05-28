import 'package:flutter/material.dart';
import 'package:stitchwallert/main.dart';
import 'package:stitchwallert/utils/colors.dart';
import 'package:stitchwallert/widgets/dot.dart';

class DrawerTileLogOut extends StatelessWidget {
  final String name;
  final String route;
  const DrawerTileLogOut({
    Key key,
    this.name,
    this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      color: appColorBlack,
      child: InkWell(
        onTap: () {
          // TODO : Call api for user log out
          Navigator.pop(context, main());
          Navigator.pushReplacementNamed(context, 'login');
        },
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: size.width / 8,
                child: Center(
                  child: Dot(
                    color: appColorMaroon,
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
                      fontSize: 15,
                      color: appColorPeach,
                      fontFamily: 'Nova',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
