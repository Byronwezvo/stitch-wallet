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
        color: appBlackColor,
        height: 50,
        width: size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: size.width / 8,
              child: Dot(
                color: appRedColor,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Center(
                    child: Text(
                      message,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: appWhiteColor,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ],
              ),
              height: 50,
              width: size.width - 150,
            ),
            Container(
              width: (size.width / 5) + 5,
              child: Center(
                child: Text(
                  amount,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: appWhiteColor,
                    fontSize: 15,
                    letterSpacing: 1,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
