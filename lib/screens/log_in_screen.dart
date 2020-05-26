import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';
import 'package:stitchwallert/widgets/clickable_text.dart';
import 'package:stitchwallert/widgets/input_field.dart';
import 'package:stitchwallert/widgets/pill_button.dart';
import 'package:stitchwallert/widgets/pill_button_login.dart';

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
        color: appColorBlack,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/appnametextonly.png',
                    height: (size.height / 3) + 50,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    height: 20,
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
                  PillButtonLogin(
                    route: 'homepage',
                    name: 'Log In',
                    // TODO : call the api for login user in
                  ),
                  SizedBox(
                    height: 30,
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
      ),
    );
  }
}
