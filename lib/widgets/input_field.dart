import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final bool hiddenText;
  final Function textInput;
  const InputField({
    Key key,
    this.hintText,
    this.hiddenText,
    this.textInput,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SizedBox(
        height: 50,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: appColorKhaki,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    color: appdarkShadowColor,
                    offset: Offset(1, 1),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                obscureText: hiddenText,
                onChanged: textInput,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Nova',
                    color: appColorPeach,
                  ),
                  border: InputBorder.none,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
