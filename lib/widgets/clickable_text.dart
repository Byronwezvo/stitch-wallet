import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';

class ClickableText extends StatelessWidget {
  final String text;
  final String route;
  const ClickableText({
    Key key,
    this.text,
    this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, route),
      child: Text(
        text,
        style: TextStyle(
          color: appColorMaroon,
          fontSize: 15,
          fontFamily: 'Nova',
        ),
      ),
    );
  }
}
