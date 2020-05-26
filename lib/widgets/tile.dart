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
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'history'),
      child: Container(
        color: appColorBlack,
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
                  width: size.height / 3,
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
              ],
            ),
            Container(
              //color: appColorPeach,
              width: size.height / 6,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      amount,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Nova',
                        fontWeight: FontWeight.bold,
                        color: appColorMaroon,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
