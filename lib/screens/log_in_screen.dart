import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stitchwallert/screens/home_screen.dart';
import 'package:stitchwallert/utils/colors.dart';
import 'package:stitchwallert/widgets/clickable_text.dart';
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
      print('show error snack');
    } else {
      var url = 'http://192.168.43.21:3000/login/$inputMobile/$inputPassword';
      var response = await http.post(Uri.encodeFull(url));
      status = response.statusCode;
      data = json.decode(response.body);
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
      body: Container(
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
                        logUserIn(mobileNumber, password);
                        logUserIn(mobileNumber, password);
                        switch (status) {
                          case 200:
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) => HomePage(
                                  data: data,
                                ),
                              ),
                            );
                            print(data[0]['user_balance']);
                            break;

                          case 400:
                            print('User made a typo - snack here');
                            break;

                          default:
                            print('generic error, mybe not connected');
                        }
                      },
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
      ),
    );
  }
}
