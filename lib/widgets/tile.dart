import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';
import 'package:stitchwallert/widgets/dot.dart';

class Tile extends StatelessWidget {
  final String message;
  final String amount;
  const Tile({
    Key key,
    this.message,
    this.amount,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, 'history'),
      child: Container(
        height: 50,
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
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
                  //width: size.width / 2,
                  child: Text(
                    message,
                    style: TextStyle(
                      fontSize: size.height / 50,
                      fontFamily: 'Nova',
                      color: appColorPeach,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  //color: appColorKhaki,
                  //width: size.width / 2,
                  child: Text(
                    amount,
                    style: TextStyle(
                      fontSize: size.height / 50,
                      fontFamily: 'Nova',
                      color: appColorMaroon,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
