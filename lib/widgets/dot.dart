import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';

class Dot extends StatelessWidget {
  final Color color;
  const Dot({
    Key key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 13,
      width: 13,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            color: appdarkShadowColor,
            offset: Offset(1, 1),
          ),
        ],
      ),
    );
  }
}
