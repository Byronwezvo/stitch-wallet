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
      backgroundColor: appWhiteColor,
      appBar: AppBar(
        backgroundColor: appWhiteColor,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: appBlackTextColor,
        ),
        title: Text(
          'Notifications',
          style: TextStyle(
            color: appBlackTextColor,
          ),
        ),
      ),
    );
  }
}
