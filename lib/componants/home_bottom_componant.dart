import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';

class BottomComponant extends StatelessWidget {
  const BottomComponant({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBlackColor,
      height: size.height / 2 - 41,
    );
  }
}
