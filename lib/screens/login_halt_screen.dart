import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;
import 'package:stitchwallert/screens/home_screen.dart';
import 'package:stitchwallert/utils/colors.dart';
import 'package:stitchwallert/utils/url.dart';
import 'package:stitchwallert/widgets/connection_error_dialog.dart';

class LoginHaltScreen extends StatefulWidget {
  final String passwordValue;
  final String numberValue;

  const LoginHaltScreen({
    Key key,
    this.numberValue,
    this.passwordValue,
  }) : super(key: key);

  @override
  _LoginHaltScreenState createState() => _LoginHaltScreenState();
}

class _LoginHaltScreenState extends State<LoginHaltScreen> {
  // ::: Local variables from arguments.
  String loginNumber = '';
  String loginPassword = '';

  // ::: Make an api call
  authenticateUser(String number, String password) async {
    print(number);
    var url = 'http://$monkeyapi/login/$number/$password';
    var response = await http.post(Uri.encodeFull(url));
    print(response.body);
    validateLogIn(response.statusCode, json.decode(response.body));
  }

  // ::: Validating and routing
  validateLogIn(statusCode, data) {
    print(statusCode);
    print(data);

    // ::: if 200 log user to new route
    if (statusCode == 200) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext ctx) => HomePage(
            data: data,
          ),
        ),
      );
    }

    // ::: if 400 return with response
    if (statusCode == 400) {
      return showDialog(
        context: context,
        builder: (context) => ConnectionErrorDialog(
          onOkayClick: () {
            Navigator.pop(context);
            Navigator.pop(context);
          },
          errorMessage:
              'Please check your mobile and password or if you don\'t have an account create one',
        ),
      );
    }
  }

  // :: Modify the initial state
  void initState() {
    super.initState();

    // ::: Change local variables into input from login Screen
    loginNumber = widget.numberValue;
    loginPassword = widget.passwordValue;

    // ::: Call the Log in method
    Future.delayed(
      Duration(seconds: 3),
      () => authenticateUser(loginNumber, loginPassword),
    );

    // ::: Add logic that if request is not made _seconds we throw an Error dialog
    Future.delayed(
      Duration(minutes: 1),
      () {
        // ::: Display an Error Dialog
        return showDialog(
          context: context,
          builder: (context) => ConnectionErrorDialog(
            onOkayClick: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            errorMessage:
                'Connection timeout, Please check you connection settings',
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: appColorBlack,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: size.height / 2,
              child: SpinKitChasingDots(
                color: appColorOrange,
                size: 50.0,
              ),
            ),
            AutoSizeText(
              'Please Wait...',
              minFontSize: 18,
              style: TextStyle(
                color: appColorMaroon,
                fontFamily: 'Nova',
              ),
            )
          ],
        ),
      ),
    );
  }
}
