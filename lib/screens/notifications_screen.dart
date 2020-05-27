import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';
import 'package:stitchwallert/widgets/notifications_tile.dart';
import 'package:stitchwallert/widgets/tile.dart';

class NotificationsScreen extends StatefulWidget {
  final List notifications;

  const NotificationsScreen({
    Key key,
    this.notifications,
  }) : super(key: key);

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  List notificationsList = [];

  void initState() {
    super.initState();
    notificationsList = widget.notifications;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: appColorBlack,
      floatingActionButton: FloatingActionButton(
        onPressed: () => print(notificationsList),
      ),
      appBar: AppBar(
        backgroundColor: appColorBlack,
        centerTitle: true,
        elevation: 0,
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
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          // TODO : Create a List View Builder
          child: ListView.builder(
            itemCount: notificationsList.length,
            itemBuilder: (BuildContext ctx, int i) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: NotificationsTile(
                  size: size,
                  message: '${notificationsList[i]['message']}',
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
