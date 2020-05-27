import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';
import 'package:stitchwallert/widgets/dot.dart';

class NotificationsTile extends StatelessWidget {
  final String message;
  const NotificationsTile({
    Key key,
    this.message,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'history'),
      child: Container(
        color: appColorBlack,
        height: 50,
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              //color: appColorMaroon,
              width: 40,
              child: Dot(
                color: appColorMaroon,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              //color: appColorKhaki,
              width: size.height / 2,
              child: Text(
                message,
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Nova',
                  color: appColorPeach,
                  letterSpacing: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
