import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';

class NotificationsScreen extends StatefulWidget {
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColorBlack,
      appBar: AppBar(
        backgroundColor: appColorBlack,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: appColorPeach,
        ),
        title: Text(
          'Notifications',
          style: TextStyle(
            color: appColorPeach,
          ),
        ),
      ),
    );
  }
}
