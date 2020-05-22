import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';

class PillButton extends StatelessWidget {
  final String name;
  const PillButton({
    Key key,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'homepage'),
      child: Container(
        height: 50,
        width: 180,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 30,
              ),
              child: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  color: appRedColor,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: appdarkShadowColor,
                      blurRadius: 3,
                      offset: Offset(1, 2),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              name,
              style: TextStyle(
                color: appRedColor,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                fontSize: 18,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: appWhiteColor,
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
