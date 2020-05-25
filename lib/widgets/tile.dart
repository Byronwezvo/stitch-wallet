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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: size.width / 8,
              child: Dot(
                color: appColorMaroon,
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
                        fontFamily: 'Nova',
                        color: appColorPeach,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ],
              ),
              height: 50,
              width: size.width - 140,
            ),
            Container(
              width: (size.width / 5) + 10,
              child: Center(
                child: Text(
                  amount,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: appColorPeach,
                    fontSize: 15,
                    fontFamily: 'Nova',
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
