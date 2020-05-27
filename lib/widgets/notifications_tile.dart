import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';
import 'package:stitchwallert/widgets/dot.dart';

class NotificationsTile extends StatelessWidget {
  final String message;
  final String time;
  const NotificationsTile({
    Key key,
    this.message,
    this.time,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
              SizedBox(
                height: 3,
              ),
              Container(
                //color: appColorKhaki,
                width: size.height / 2,
                child: Text(
                  time,
                  style: TextStyle(
                    fontSize: 8,
                    fontFamily: 'Nova',
                    color: appColorPeach,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
