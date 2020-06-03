import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stitchwallert/screens/login_halt_screen.dart';
import 'package:stitchwallert/utils/colors.dart';
import 'package:stitchwallert/widgets/clickable_text.dart';
import 'package:stitchwallert/widgets/error_dialog.dart';
import 'package:stitchwallert/widgets/input_field.dart';
import 'package:stitchwallert/widgets/pill_button_login.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  String mobileNumber = '';
  String password = '';

  // ::: Set mobile text input value to local variable
  setMobileNumber(String mobileInput) {
    setState(() {
      mobileNumber = mobileInput;
    });
  }

  // ::: Set mobile text input value to local variable
  setPassword(String passwordInput) {
    setState(() {
      password = passwordInput;
    });
  }

  // ::: Check to see if user typing something
  // :: if true route to LoginHalt
  // :: if false show error dialog
  validateInput() {
    if (mobileNumber == '' || password == '') {
      // ::: Show Error to user when no input is given
      return showDialog(
        context: context,
        builder: (context) => ErrorDialog(
          errorMessage: 'Please enter your mobile number and password',
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext ctx) => LoginHaltScreen(
            numberValue: mobileNumber,
            passwordValue: password,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overScroll) {
          overScroll.disallowGlow();
          return false;
        },
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: appColorBlack,
          child: SingleChildScrollView(
            child: SafeArea(
              child: Center(
                child: Hero(
                  tag: 'page',
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: size.height / 5,
                      ),
                      Image.asset(
                        'assets/images/appnametextonly.png',
                        height: (size.height / 12) + 50,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      InputField(
                        hintText: 'Mobile Number',
                        hiddenText: false,
                        textInput: (String mobile) => setMobileNumber(mobile),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      InputField(
                        hintText: 'Password',
                        hiddenText: true,
                        textInput: (String password) => setPassword(password),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      PillButtonLogin(
                        route: 'homepage',
                        name: 'Log In',
                        onclick: () => validateInput(),
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
        ),
      ),
    );
  }
}
