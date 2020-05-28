import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';

class PillButtonLogin extends StatelessWidget {
  final String route;
  final String name;
  final Function onclick;
  const PillButtonLogin({
    Key key,
    this.name,
    this.route,
    this.onclick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onclick,
      child: Container(
        height: 40,
        width: 150,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 22.5,
              ),
              child: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  color: appColorMaroon,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: appdarkShadowColor,
                      blurRadius: 3,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              name,
              style: TextStyle(
                color: appColorMaroon,
                fontFamily: 'Nova',
                fontSize: 15,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: appColorOrange,
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              color: appdarkShadowColor,
              offset: Offset(1, 2),
            ),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
      ),
    );
  }
}
