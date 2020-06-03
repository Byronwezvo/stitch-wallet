import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:stitchwallert/screens/home_screen.dart';
import 'package:stitchwallert/utils/colors.dart';
import 'package:stitchwallert/utils/url.dart';
import 'package:stitchwallert/widgets/connection_error_dialog.dart';
import 'package:stitchwallert/widgets/error_dialog.dart';

class LoginHaltScreen extends StatefulWidget {
  @override
  _LoginHaltScreenState createState() => _LoginHaltScreenState();
}

class _LoginHaltScreenState extends State<LoginHaltScreen> {
  // ::: Make an api call
  LogUserIn() async {
    // Logic to navigate user to Homepage or show Errors
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

    logUserIn(String inputMobile, String inputPassword) async {
      if (inputMobile == '' && inputPassword == '') {
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
  }

  // :: Modify the initial state
  void initState() {
    super.initState();
    LogUserIn();

    // ::: Add logic that if request is not made _seconds we throw an Error dialog
    Future.delayed(
      Duration(seconds: 5),
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
