import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';
import 'package:stitchwallert/widgets/notifications_bar.dart';

class UpperComponant extends StatelessWidget {
  const UpperComponant({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.teal,
      height: size.height / 2 - 41,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            '\$2 020',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              color: appBlackColor,
              fontSize: 60,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 30,
            width: 100,
            child: Center(
              child: Text(
                'Balance',
                style: TextStyle(
                  fontSize: 15,
                  color: appBlackColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: appRedColor,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          NotificationsBar(size: size)
        ],
      ),
    );
  }
}
