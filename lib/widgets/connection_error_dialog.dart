import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';

class ConnectionErrorDialog extends StatelessWidget {
  final String errorMessage;
  final Function onOkayClick;
  const ConnectionErrorDialog({
    Key key,
    this.errorMessage,
    this.onOkayClick,
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
        'Error',
        style: TextStyle(
          fontFamily: 'Nova',
          color: appColorMaroon,
        ),
      ),
      content: Text(
        errorMessage,
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
          onPressed: onOkayClick,
        ),
      ],
    );
  }
}
