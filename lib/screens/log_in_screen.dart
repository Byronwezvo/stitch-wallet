import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stitchwallert/screens/home_screen.dart';
import 'package:stitchwallert/utils/colors.dart';
import 'package:stitchwallert/utils/url.dart';
import 'package:stitchwallert/widgets/clickable_text.dart';
import 'package:stitchwallert/widgets/error_dialog.dart';
import 'package:stitchwallert/widgets/input_field.dart';
import 'package:stitchwallert/widgets/pill_button_login.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  int status = 0;
  String mobileNumber = '';
  String password = '';
  List data = [];

// ::: Make Api call to Monkey Api
  logUserIn(String inputMobile, String inputPassword) async {
    if (mobileNumber == '' && password == '') {
      // ::: Show Error to user when no input is given
      return showDialog(
        context: context,
        builder: (context) => ErrorDialog(
          errorMessage: 'Please enter your mobile number and password',
        ),
      );
    } else {
      var url = 'http://$monkeyapi/login/$inputMobile/$inputPassword';
      var response = await http.post(Uri.encodeFull(url));
      //print(response.body);
      validateLogIn(response.statusCode, json.decode(response.body));
    }
  }

  validateLogIn(statusCode, data) {
    print(statusCode.runtimeType);
    print(data);

    if (statusCode == 200) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext ctx) => HomePage(
            data: data,
          ),
        ),
      );
    }
  }

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
                        onclick: () {
                          print('User Clicked');
                          logUserIn(mobileNumber, password);
                        },
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
