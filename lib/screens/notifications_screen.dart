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
        centerTitle: true,
        title: Text('Notifications'),
      ),
    );
  }
}
