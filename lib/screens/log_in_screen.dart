import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';
import 'package:stitchwallert/widgets/clickable_text.dart';
import 'package:stitchwallert/widgets/input_field.dart';
import 'package:stitchwallert/widgets/pill_button.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: appBlackColor,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: size.height / 10,
                ),
                Text(
                  'Stitch',
                  style: TextStyle(
                    fontFamily: 'Lisa-Lovely',
                    fontSize: 70.0,
                    color: appRedColor,
                    letterSpacing: 3,
                  ),
                ),
                InputField(
                  hintText: 'Mobile Number',
                  hiddenText: false,
                ),
                SizedBox(
                  height: 25,
                ),
                InputField(
                  hintText: 'Password',
                  hiddenText: true,
                ),
                SizedBox(
                  height: 50,
                ),
                PillButton(
                  name: 'Log In',
                ),
                SizedBox(
                  height: 20,
                ),
                ClickableText(
                  text: 'Create Account',
                  route: 'createAccount',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
