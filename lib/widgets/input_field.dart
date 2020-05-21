import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final bool hiddenText;
  const InputField({Key key, this.hintText, this.hiddenText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: SizedBox(
        height: 50,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: appWhiteColor,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                obscureText: hiddenText,
                decoration: InputDecoration(
                  hintText: hintText,
                  fillColor: appWhiteColor,
                  border: null,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
