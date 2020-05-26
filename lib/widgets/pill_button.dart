import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';

class PillButton extends StatelessWidget {
  final String route;
  final String name;
  const PillButton({
    Key key,
    this.name,
    this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () => Navigator.pushNamed(context, route),
      splashColor: appColorMaroon,
      highlightColor: appColorMaroon,
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
