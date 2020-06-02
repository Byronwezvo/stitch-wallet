import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';

class SuccessDialog extends StatelessWidget {
  final String sucessMessage;
  final Function onOkayPress;
  const SuccessDialog({
    Key key,
    this.sucessMessage,
    this.onOkayPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 30,
      ),
      backgroundColor: appColorBlack,
      title: Text(
        'Success',
        style: TextStyle(
          fontFamily: 'Nova',
          color: appColorMaroon,
        ),
      ),
      content: Text(
        sucessMessage,
        style: TextStyle(
          fontFamily: 'Nova',
          color: appColorPeach,
        ),
      ),
      actions: [
        FlatButton(
          child: Text(
            'Okay',
            style: TextStyle(
              fontFamily: 'Nova',
              color: appColorOrange,
            ),
          ),
          onPressed: onOkayPress,
        ),
      ],
    );
  }
}
