import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';

class TransactionConfimation extends StatelessWidget {
  final String amount;
  final String number;
  final Function onOkayPress;
  const TransactionConfimation({
    Key key,
    this.amount,
    this.number,
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
        'Confirm Transaction',
        style: TextStyle(
          fontFamily: 'Nova',
          color: appColorMaroon,
        ),
      ),
      content: Text(
        'You are sending \$$amount.00 to $number.',
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
