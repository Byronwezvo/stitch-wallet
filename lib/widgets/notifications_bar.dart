import 'package:flutter/material.dart';
import 'package:stitchwallert/screens/notifications_screen.dart';
import 'package:stitchwallert/utils/colors.dart';

class NotificationsBar extends StatelessWidget {
  const NotificationsBar({
    Key key,
    @required this.notifications,
    @required this.size,
  }) : super(key: key);

  final Size size;
  final List notifications;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext ctx) => NotificationsScreen(
            notifications: notifications,
          ),
        ),
      ),
      child: Container(
        color: appColorKhaki,
        height: 40,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Notifications',
                style: TextStyle(
                  color: appColorPeach,
                  fontFamily: 'Nova',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
