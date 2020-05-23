import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';

class NotificationsBar extends StatelessWidget {
  const NotificationsBar({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'notifications'),
      child: Container(
        color: appRedColor,
        height: 40,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Notifications',
                style: TextStyle(
                  color: appBlackColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
