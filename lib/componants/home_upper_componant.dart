import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';
import 'package:stitchwallert/widgets/notifications_bar.dart';

class UpperComponant extends StatelessWidget {
  final String amount;
  final List notifications;
  const UpperComponant({
    Key key,
    this.amount,
    this.notifications,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appColorBlack,
      height: size.height / 2 - 41,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            amount,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Nova',
              color: appColorPeach,
              fontSize: 45,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 30,
            width: 100,
            child: Center(
              child: Text(
                'Balance',
                style: TextStyle(
                  fontSize: 15,
                  color: appColorPeach,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: appColorKhaki,
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  color: appdarkShadowColor,
                  offset: Offset(1, 2),
                ),
              ],
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          SizedBox(
            height: 75,
          ),
          NotificationsBar(
            size: size,
            notifications: notifications,
          )
        ],
      ),
    );
  }
}
